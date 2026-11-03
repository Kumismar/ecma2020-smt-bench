; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-Za-z]{1} *\d{1}[A-Za-z]{1}\d{1}$)") ((_ re.from_regex ecma2020 u) "^[0-9\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$"))) (re.diff ((_ re.from_regex ecma2020 u) "(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[A-Za-z]{1} *\d{1}[A-Za-z]{1}\d{1}$)") ((_ re.from_regex ecma2020 u) "^[0-9\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$"))))
(check-sat)
