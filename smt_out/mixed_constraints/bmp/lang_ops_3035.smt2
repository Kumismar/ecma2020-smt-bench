; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<\u{10348}meter onblur=alert(1) tabinde\u{1f600}x=1 id=x></meter><input autofocus>") (= x "<rtc id=x tabindex=1 onbeforedeactivate=alert(1)></rtc><input autofocus>") (= x """`'><script>\xE3\x80\x80javascript:alert(1)</script>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\+?( ?\(?-?\d\)?){6,13}$") ((_ re.from_regex ecma2020) ".+etud.univ-tln.fr"))))
(check-sat)
