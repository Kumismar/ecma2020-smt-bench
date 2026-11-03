; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<hr onmousedown=""alert(1)"">test</hr>") (= x "<ins onmouseover=""alert(1)"">test</ins>") (= x "<abbr id=x tabindex=1 onactivate=alert(1)></abbr>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~](\.?[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~])*@[a-zA-Z0-9](-*\.?[a-zA-Z0-9])*\.[a-zA-Z](-?[a-zA-Z0-9])+$") (re.comp ((_ re.from_regex ecma2020) "[0-9][0-9][0-9][0-9][0-9][0-9]"))))))
(check-sat)
