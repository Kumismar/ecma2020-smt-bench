; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: repeated, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?:^(['a-zA-z\u{430}-\u{44f}\u{410}-\u{44f}\u{401}\u{451}]\s?-?){2,50}$)+") ((_ re.from_regex ecma2020 u) "^(['a-zA-z\u{430}-\u{44f}\u{410}-\u{44f}\u{401}\u{451}]\s?-?){2,50}$")) ((_ re.from_regex ecma2020 u) "(?:^(['a-zA-z\u{430}-\u{44f}\u{410}-\u{44f}\u{401}\u{451}]\s?-?){2,50}$)+")))
(check-sat)
