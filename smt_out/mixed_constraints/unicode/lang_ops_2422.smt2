; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<blockquote id=x tabindex=1 onfocusin=alert(1)></blockquote>") (= x "<STYLE>li {list-style-image: url(\""javascript:alert('XSS')\"");}</STYLE><UL><LI>XSS") (= x "<style>:target {transform: rotate(180deg);}</style><option id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></option>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "^(([gG][iI][rR]{0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$") (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[0-9]{1,12}$") ((_ re.from_regex ecma2020 u) "^(\+420|\+421|00420|00421)?[ ]*[0-9]{3}[ ]*[0-9]{3}[ ]*[0-9]{3}$")))) (re.comp (re.++ re.all (str.to_re "ndex=1") re.all)))))
(check-sat)
