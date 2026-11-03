; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<main draggable=""true"" ondragenter=""alert(1)"">test</main>") (= x "%253cscript%253ealert(document.cookie)%253c/script%253e") (= x "<time onbeforepaste=""alert(1)"" contenteditable>test</time>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) ".{5,18}") ((_ re.from_regex ecma2020) "^\u{a3}?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$")) (re.comp ((_ re.from_regex ecma2020) "(?!0{5})(\d{5})(?!-?0{4})(-?\d{4})?")))))
(check-sat)
