const fs = require('fs');
const path = require('path');
const readline = require('readline');

async function generateSmtFormulas(patternsFilename, payloadsFilename, outputDirectory) {
    if (!fs.existsSync(outputDirectory)) {
        fs.mkdirSync(outputDirectory, { recursive: true });
    }

    let payloads = [];
    try {
        const payloadsData = fs.readFileSync(payloadsFilename, 'utf-8');
        payloads = payloadsData.split(/\r?\n/).filter(line => line.trim().length > 0);
    } catch (err) {
        console.error(`Chyba při čtení souboru s payloady: ${err.message}`);
        return;
    }

    if (payloads.length === 0) {
        console.error('Soubor s payloady je prázdný.');
        return;
    }

    const fileStream = fs.createReadStream(patternsFilename, 'utf-8');
    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    let idx = 0;

    for await (const line of rl) {
        const trimmedLine = line.trim();
        if (!trimmedLine) continue;

        try {
            const data = JSON.parse(trimmedLine);
            const regexStr = data.pattern || "";

            if (!regexStr) {
                idx++;
                continue;
            }

            const escapedRegex = regexStr.replace(/"/g, '""');
            
            const randomPayload = payloads[Math.floor(Math.random() * payloads.length)].trim();
            const escapedPayload = randomPayload.replace(/"/g, '""');

            let isSat = false;
            try {
                const regexObj = new RegExp(regexStr);
                isSat = regexObj.test(randomPayload);
            } catch (regexErr) {
                console.error(`Chyba kompilace regexu na řádku ${idx}: ${regexErr.message}`);
                idx++;
                continue;
            }

            const statusStr = isSat ? "sat" : "unsat";
            const smtFormula = 
`(set-logic QF_S)
(set-info :status ${statusStr})
(declare-const x String)
(assert (str.in_re x (re.from_ecma2020 "${escapedRegex}")))
(assert (= x "${escapedPayload}"))
(check-sat)
`;

            const filename = `regex_${String(idx).padStart(4, '0')}.smt2`;
            const outputPath = path.join(outputDirectory, filename);
            fs.writeFileSync(outputPath, smtFormula, 'utf-8');

        } catch (err) {
            if (err instanceof SyntaxError) {
                console.error(`Chyba při parsování JSON na řádku ${idx}: ${trimmedLine}`);
            } else {
                console.error(`Neočekávaná chyba na řádku ${idx}: ${err.message}`);
            }
        }
        
        idx++;
    }
    
    console.log(`Generování dokončeno. Zpracováno řádků: ${idx}`);
}

generateSmtFormulas("patterns-used-in-testbed.txt", "xss-payloads.txt", "smt_out");