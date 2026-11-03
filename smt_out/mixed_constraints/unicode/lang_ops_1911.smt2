; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<map id=x tabindex=1 onactivate=alert(1)></map>") (= x "<svg><template onload=alert(1)></template>") (= x "<menuitem onfocusout=alert(1\u{10348}) tabindex=1 id=x></menuitem><input autof\u{20000}ocus>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[^\s@]+@([^\s@.,]+\.)+[^\s@.,]{2,}$") (re.comp (re.inter (re.++ re.all (str.to_re "plate>")) (re.comp ((_ re.from_regex ecma2020 u) "^-?\d+\.?\d*$")))))))
(check-sat)
