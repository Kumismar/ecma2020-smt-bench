; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<button onkeyup=""alert(1)"" contenteditable>test</button>") (= x "<STYLE TYPE=""text/javascript"">alert('XSS');</STYLE>") (= x "<img src=""javascript:alert(1)"">")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{1}[0-9a-zA-Z]+[\w\.-]+@[\w\.-]+\.\w{2,}$") ((_ re.from_regex ecma2020 u) "^.{1,}$")))))
(check-sat)
