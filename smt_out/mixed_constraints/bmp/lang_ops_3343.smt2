; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<br onbeforepaste=""alert(1)"" contenteditable>test</br>") (= x "<x %6Fnxxx=1") (= x "<frameset onmouseup=""alert(1)"">test</frameset>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(10)$") (re.union (re.++ re.all (str.to_re """ ") re.all) ((_ re.from_regex ecma2020) "([0-9]{3})")))))))
(check-sat)
