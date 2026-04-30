const fs = require("fs");
const path = require("path");
const readline = require("readline");
const { Worker, isMainThread, parentPort, workerData } = require("worker_threads");

function makeLcg(seed) {
    let s = seed >>> 0;
    return () => {
        s = (Math.imul(1664525, s) + 1013904223) >>> 0;
        return s / 0x100000000;
    };
}

const rand = makeLcg(42);

if (!isMainThread) {
    // Worker thread: test regex against payload
    const { regexStr, payload } = workerData;
    try {
        const result = new RegExp(regexStr).test(payload);
        parentPort.postMessage(result);
    } catch {
        parentPort.postMessage(null);
    }
    process.exit(0);
}//

function escapeSmt2(s) {
    // SMT-LIB 2 escaping: double quotes become "", control chars become \u{XX}
    let out = "";
    for (const ch of s) {
        const cp = ch.codePointAt(0);
        if (ch === '"') out += '""';
        else if (cp < 0x20) out += `\\u{${cp.toString(16)}}`;
        else out += ch;
    }
    return out;
}

function buildFormula(regexStr, payload, isSat) {
    return [
        "(set-logic QF_S)",
        `(set-info :status ${isSat ? "sat" : "unsat"})`,
        "(declare-const x String)",
        `(assert (str.in_re x (re.from_ecma2020 "${escapeSmt2(regexStr)}")))`,
        `(assert (= x "${escapeSmt2(payload)}"))`,
        "(check-sat)",
        "",
    ].join("\n");
}

function testWithTimeout(regexStr, payload, timeoutMs = 1000) {
    // Starts a worker to test the regex against the payload, with a timeout
    return new Promise((resolve) => {
        const worker = new Worker(__filename, {
            workerData: { regexStr, payload },
        });
        const timer = setTimeout(() => {
            worker.terminate();
            resolve(null);
        }, timeoutMs);
        worker.on("message", (res) => {
            clearTimeout(timer);
            resolve(res);
        });
        worker.on("error", () => {
            clearTimeout(timer);
            resolve(null);
        });
    });
}

async function generate(patternsFile, payloadsFile, outDir) {
    fs.mkdirSync(outDir, { recursive: true });

    // Load payloads into memory
    const payloads = fs
        .readFileSync(payloadsFile, "utf-8")
        .split(/\r?\n/)
        .map((l) => l.trim())
        .filter(Boolean);

    if (!payloads.length) {
        console.error("Empty payloads file.");
        return;
    }

    const rl = readline.createInterface({
        input: fs.createReadStream(patternsFile, "utf-8"),
        crlfDelay: Infinity,
    });

    const seen = new Set();
    let written = 0;
    const stats = { sat: 0, unsat: 0, timeout: 0, error: 0 };

    for await (const line of rl) {
        const trimmed = line.trim();
        if (!trimmed) continue;

        // Extract regex pattern
        let regexStr;
        try {
            regexStr = JSON.parse(trimmed)?.pattern?.trim();
            if (!regexStr) continue;
        } catch {
            console.error(`JSON parse error: ${trimmed}`);
            stats.error++;
            continue;
        }

        // Skip duplicates
        if (seen.has(regexStr)) continue;
        seen.add(regexStr);

        // Test regex against payloads until we get a result or run out of attempts
        let isSat = null;
        let finalPayload = null;
        for (
            let attempt = 0;
            attempt < payloads.length && isSat === null;
            attempt++
        ) {
            const candidate = payloads[Math.floor(rand() * payloads.length)];
            const result = await testWithTimeout(regexStr, candidate);
            if (result !== null) {
                isSat = result;
                finalPayload = candidate;
            }
        }

        if (isSat === null) {
            console.error(`Timeout on all payloads, skipping: ${regexStr}`);
            stats.timeout++;
            continue;
        }

        fs.writeFileSync(
            path.join(outDir, `regex_${String(written).padStart(4, "0")}.smt2`),
            buildFormula(regexStr, finalPayload, isSat),
            "utf-8",
        );

        stats[isSat ? "sat" : "unsat"]++;
        written++;
    }

    console.log(`Written:  ${written}`);
    console.log(`SAT:      ${stats.sat}`);
    console.log(`UNSAT:    ${stats.unsat}`);
    console.log(`Timeout:  ${stats.timeout}`);
    console.log(`Errors:   ${stats.error}`);
}

generate("patterns-used-in-testbed.txt", "xss-payloads.txt", "smt_out");
