; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020) "[a-z\u{e1}\u{e9}\u{ed}\u{f3}\u{f6}\u{151}\u{fc}\u{171}\u{fa}A-Z\u{c1}\u{c9}\u{cd}\u{d3}\u{d6}\u{150}\u{dc}\u{170}\u{da}\. ]{3,}") ((_ re.from_regex ecma2020) "^(\+7|7|8)?[\s\-]?\(?[489][0-9]{2}\)?[\s\-]?[0-9]{3}[\s\-]?[0-9]{2}[\s\-]?[0-9]{2}$")) (re.comp ((_ re.from_regex ecma2020) "^(\+7|7|8)?[\s\-]?\(?[489][0-9]{2}\)?[\s\-]?[0-9]{3}[\s\-]?[0-9]{2}[\s\-]?[0-9]{2}$"))) (re.comp ((_ re.from_regex ecma2020) "^(\+7|7|8)?[\s\-]?\(?[489][0-9]{2}\)?[\s\-]?[0-9]{3}[\s\-]?[0-9]{2}[\s\-]?[0-9]{2}$"))))
(check-sat)
