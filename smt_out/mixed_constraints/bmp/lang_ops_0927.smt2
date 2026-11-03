; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dfn onbeforecut=""alert(1)"" contenteditable>test</dfn>") (= x "<svg xmlns=""http://www.w3.org/2000/svg"">") (= x "<menu onclick=""alert(1)"">test</menu>")))
(assert (not (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020) "^[0-9]{13}$") (re.++ re.all (str.to_re "dfn>"))) (re.comp ((_ re.from_regex ecma2020) "50$"))))))
(check-sat)
