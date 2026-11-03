; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div id=x tabindex=1 onbeforedeactivate=alert(1)></div><input autofocus>") (= x "<marquee onstart=alert(1)>XSS</marquee>") (= x "<style>:target {transform: rotate(180deg);}</style><command id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></command>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020) "^[3]{1}[0-9]{9}$") (re.comp ((_ re.from_regex ecma2020) ".{3,23}"))) (re.++ (str.to_re "<ma") re.all))))
(check-sat)
