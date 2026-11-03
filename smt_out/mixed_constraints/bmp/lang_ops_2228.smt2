; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<video oncanplay=alert(1)><source src=""validvideo.mp4"" type=""video/mp4""></video>") (= x "<x%09onxxx=1") (= x "<style o\u{1f4a9}ncontextmenu=""alert(1)"">test</style>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "(2)(2)") (re.inter (re.inter ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-z]{2,}$") (re.++ re.all (str.to_re "deo>"))) (re.comp ((_ re.from_regex ecma2020) "^(([gG][iI][rR]{0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$"))))))
(check-sat)
