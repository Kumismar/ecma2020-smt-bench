; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\x15javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "&lt;A HREF=\""//google\""&gt;XSS&lt;/A&gt;") (= x "<form onmouseleave=""alert(1)"">test</form>")))
(assert (str.in_re x (re.comp (re.union ((_ re.loop 41 51) re.allchar) (re.union ((_ re.from_regex ecma2020) "^[a-\u{17e}A-\u{17d} '-]+$") ((_ re.from_regex ecma2020) "[0-9 +]*"))))))
(check-sat)
