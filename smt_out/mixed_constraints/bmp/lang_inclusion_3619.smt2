; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "(?:^(?:((07|00447|\+447)\d{9}|(08|003538|\+3538)\d{8,9})|((0|0044|\+44)\d{10}|(08)\d{9}|(90)\d{6}|(92)\d{6}|(437)\d{5}|(28)\d{6}|(37)\d{6}|(66)\d{6}|(82)\d{6}|(777)\d{5}|(93)\d{6}))$)ue") ((_ re.from_regex ecma2020) "^(?:((07|00447|\+447)\d{9}|(08|003538|\+3538)\d{8,9})|((0|0044|\+44)\d{10}|(08)\d{9}|(90)\d{6}|(92)\d{6}|(437)\d{5}|(28)\d{6}|(37)\d{6}|(66)\d{6}|(82)\d{6}|(777)\d{5}|(93)\d{6}))$")) ((_ re.from_regex ecma2020) "(?:^(?:((07|00447|\+447)\d{9}|(08|003538|\+3538)\d{8,9})|((0|0044|\+44)\d{10}|(08)\d{9}|(90)\d{6}|(92)\d{6}|(437)\d{5}|(28)\d{6}|(37)\d{6}|(66)\d{6}|(82)\d{6}|(777)\d{5}|(93)\d{6}))$)ue")))
(check-sat)
