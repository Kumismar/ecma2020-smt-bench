const fs = require('fs');
const path = require('path');
const RandExp = require('randexp');
const { Worker, isMainThread, parentPort, workerData } = require('worker_threads');

const OUTPUT_DIR = path.join(__dirname, 'smt_out');
const PATTERNS_FILE = 'patterns-used-in-testbed.txt';
const MAX_RETRIES = 10;

const SAT_DIR = path.join(__dirname, 'smt_out', 'sat');
const UNSAT_DIR = path.join(__dirname, 'smt_out', 'unsat');

async function genWithTimeout(regexStr, timeoutMs = 2000) {
    return new Promise((resolve) => {
        const worker = new Worker(__filename, { workerData: { regexStr } });
        const timer = setTimeout(() => {
            worker.terminate();
            resolve(null);
        }, timeoutMs);

        worker.on('message', (result) => {
            clearTimeout(timer);
            resolve(result);
        });
        worker.on('error', () => {
            clearTimeout(timer);
            resolve(null);
        });
    });
}

function escapeSmtString(str) {
    return str.replace(/\\/g, '\\\\').replace(/"/g, '""');
}

function writeSmt2(dir, filename, regexStr, payload, status) {
    const content =
`(set-logic QF_S)
(set-info :status ${status})
(declare-const x String)
(assert (str.in_re x (re.from_ecma2020 "${escapeSmtString(regexStr)}")))
(assert (= x "${escapeSmtString(payload)}"))
(check-sat)
`;
    fs.writeFileSync(path.join(dir, filename), content, 'utf-8');
}

function generateUnsatPayload(regex, satPayload) {
    const mutations = [
        satPayload + '!',
        '!' + satPayload,
        satPayload.length > 0 ? satPayload.slice(0, -1) : null,
        satPayload.slice(0, Math.floor(satPayload.length / 2))
            + '\x00'
            + satPayload.slice(Math.floor(satPayload.length / 2)),

        satPayload.replace(/[a-z]/g, '0').replace(/[A-Z]/g, '1'),
        satPayload.replace(/\d/g, 'x'),
        satPayload.replace(/[a-zA-Z0-9]/g, '!'),

        '\x00',
        '          ',          
        '!@#$%^&*()',
        '\uFFFD\uFFFD\uFFFD',  
        satPayload.split('').reverse().join(''),
    ].filter(m => m !== null && m !== satPayload);

    return mutations.find(m => !regex.test(m)) ?? null;
}

async function processRegex(regexStr, index) {
    let regex, randexp;
    try {
        regex = new RegExp(regexStr);
        randexp = new RandExp(regex);
        randexp.max = 10;
    } catch (err) {
        console.error(`[${index}] Invalid regex: ${err.message}`);
        return;
    }

    try {
        let satPayload = null;
        for (let i = 0; i < MAX_RETRIES; i++) {
            const candidate = await genWithTimeout(regexStr);
            if (candidate === null) {
                console.warn(`[${index}] Generation timed out, skipping.`);
                return;
            }
            if (regex.test(candidate)) {
                satPayload = candidate;
                break;
            }
        }

        if (satPayload === null) {
            console.warn(`[${index}] Could not generate SAT string, skipping.`);
            return;
        }

        const tag = index.toString().padStart(4, '0');
        writeSmt2(SAT_DIR, `regex_${tag}.smt2`, regexStr, satPayload, 'sat');

        const unsatPayload = generateUnsatPayload(regex, satPayload);

        if (unsatPayload !== null) {
            writeSmt2(UNSAT_DIR, `regex_${tag}.smt2`, regexStr, unsatPayload, 'unsat');
        } else {
            console.warn(`[${index}] Could not generate UNSAT string.`);
        }
    } catch (err) {
        console.error(`[${index}] Runtime error: ${err.message}`);
    }
}

if (isMainThread) {
    fs.mkdirSync(SAT_DIR, { recursive: true });
    fs.mkdirSync(UNSAT_DIR, { recursive: true });

    if (!fs.existsSync(PATTERNS_FILE)) {
        console.error(`File not found: ${PATTERNS_FILE}`);
        process.exit(1);
    }

    const lines = fs.readFileSync(PATTERNS_FILE, 'utf-8').split(/\r?\n/);
    let count = 0;

    (async () => {
        for (const [idx, line] of lines.entries()) {
            const trimmed = line.trim();
            if (!trimmed) continue;

            try {
                const { pattern } = JSON.parse(trimmed);
                if (pattern) {
                    await processRegex(pattern, idx);
                    count++;
                }
            } catch {
                console.error(`[${idx}] JSON parse error: ${trimmed}`);
            }
        }
        console.log(`Done. Processed ${count} patterns.`);
    })();

} else {
    try {
        const regex = new RegExp(workerData.regexStr);
        const randexp = new RandExp(regex);
        randexp.max = 10;
        parentPort.postMessage(randexp.gen());
    } catch {
        parentPort.postMessage(null);
    }
}
