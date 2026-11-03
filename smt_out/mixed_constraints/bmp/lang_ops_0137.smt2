; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;IMG SRC=\""jav&#x0A;ascript&#058;alert('XSS');\""&gt;") (= x "<tfoot id=x tabindex=1 onbeforeactivate=alert(1)></tfoot>") (= x "<data onkeypress=""alert(1)"" contenteditable>test</data>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[CEPcep]-\d{6}-[AaBbCc]\d{3}$") ((_ re.from_regex ecma2020) "^[a-z0-9._\+\-]+@[a-z0-9.\-]{2,}[.][a-z]{2,3}$"))))))
(check-sat)
