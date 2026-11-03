; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;IMG SRC=javascript:alert(&amp;quot;XSS&amp;quot;)&gt;") (= x "<plaintext id=x tabindex=1 onbeforeactivate=alert(1)></plaintext>") (= x "a=""get"";b=""URL(ja\"""";c=""vascr"";d=""ipt:ale"";e=""rt('XSS');\"")"";eval(a+b+c+d+e);")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "^(0|86|17951)?1[0-9]{10}") (re.++ (str.to_re "<") re.all)) (re.union ((_ re.from_regex ecma2020 u) ".+@.+\..+$") ((_ re.from_regex ecma2020 u) "^.{0,50}$")))))
(check-sat)
