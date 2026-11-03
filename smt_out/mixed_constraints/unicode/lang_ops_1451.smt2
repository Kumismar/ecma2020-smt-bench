; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<details oncontextmenu=""alert(1)"">test</details>") (= x "<plaintext draggable=""true"" ondragleave=""alert(1)"">test</plaintext>") (= x "<body BACKGROUND=""javascript:document.vulnerable=true;"">")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[+]{1}[7]{1}\s[(]{1}[9]{1}[0-9]{2}[)]{1}\s[0-9]{3}\s[0-9]{2}[-]{1}[0-9]{2}") (re.inter ((_ re.from_regex ecma2020 u) "__my_code__") ((_ re.from_regex ecma2020 u) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}]+$")))))
(check-sat)
