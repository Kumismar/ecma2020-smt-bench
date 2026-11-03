; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<u id=x tabindex=1 onfocusin=alert(1)></u>") (= x """><img src=x onerror=javascript:alert(A)>") (= x "<dd onkeydown=""alert(1)"" contenteditable>test</dd>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) ".{0}.{4,}") (re.comp (re.inter (re.diff (re.++ re.all (str.to_re "d>")) ((_ re.from_regex ecma2020 u) "^\+(\d{1}\s?){8,20}$")) ((_ re.from_regex ecma2020 u) "^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}$"))))))
(check-sat)
