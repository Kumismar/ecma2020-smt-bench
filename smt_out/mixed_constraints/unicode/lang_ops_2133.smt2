; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dialog onkeypress=""alert(1)"" contenteditable>test</dialog>") (= x "<hr onmouseup=""alert(1)"">test</hr>") (= x "<shadow id=x tabindex=1 onactivate=alert(1)></shadow>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020 u) "^(([^<>()\[\]\\.,;:\s@']+(\.[^<>()\[\]\\.,;:\s@']+)*)|('.+'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]{2,}\.)+[a-zA-Z]{2,}))$") (re.inter (re.++ (str.to_re "<shad") re.all) ((_ re.from_regex ecma2020 u) ".{6,50}$"))) ((_ re.from_regex ecma2020 u) "(\+?)([0-9]{10,})\b"))))
(check-sat)
