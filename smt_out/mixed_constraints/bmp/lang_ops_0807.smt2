; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<scrscriptipt>alert(1)</scrscriptipt>") (= x "\u{1f4a9}<tt\u{1f4a9} id=x tabindex=1 onactivate=alert(1)></tt>") (= x "<a href=""javas\x0Acript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[_A-z0-9]{3,}$") (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_.+-])+@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$") (re.comp ((_ re.from_regex ecma2020) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$"))))))
(check-sat)
