; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<fieldset draggable=""true"" ondragend=""alert(1)"">test</fieldset>") (= x "<footer onmouseup=""alert(1)"">test</footer>") (= x "<plaintext draggable=""true"" ondragenter=""alert(1)"">test</plaintext>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178} ]*$") (re.comp (re.diff ((_ re.from_regex ecma2020) "^[+]?(\d{1,2})?[\s.-]?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") ((_ re.loop 64 77) re.allchar))))))
(check-sat)
