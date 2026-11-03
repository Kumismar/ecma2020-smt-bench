; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<map onbeforepaste=""alert(1)"" contenteditable>test</map>") (= x "<xml:namespace prefix=""t"">") (= x "<b oncut=""alert(1)"" contenteditable>test</b>")))
(assert (not (str.in_re x (re.comp (re.union (re.inter ((_ re.from_regex ecma2020) "^CS\d{3,7}$") (re.++ re.all (str.to_re "t</b>"))) (re.comp ((_ re.from_regex ecma2020) "^[0-9 +()]+$")))))))
(check-sat)
