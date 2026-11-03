; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rt id=x tabindex=1 onbeforedeactivate=alert(1)></rt><input autofocus>") (= x "<;IMG SRC=javascript:alert(&;quot;XSS&;quot;)>;") (= x "<hgroup onmouseup=""alert(1)"">test</hgroup>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(\d{1})$") (re.inter ((_ re.loop 46 54) re.allchar) ((_ re.from_regex ecma2020 u) "^(\(11\) [9][0-9]{4}-[0-9]{4})|(\(11\) [1-7][0-9]{3}-[0-9]{4})|(\(1[2-9]\) [5-9][0-9]{3}-[0-9]{4})|(\([2-9][1-9]\) [5-9][0-9]{3}-[0-9]{4})$")))))
(check-sat)
