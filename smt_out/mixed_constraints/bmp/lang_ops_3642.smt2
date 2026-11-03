; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<colgroup onmouseup=""alert(1)"">test</colgroup>") (= x "<div draggable=""true"" contenteditable>drag me</div><xmp ondrop=alert(1) contenteditable>drop here</xmp>") (= x "<bdo onmouseover=""alert(1)"">test</bdo>")))
(assert (not (str.in_re x (re.comp (re.inter (re.union (re.++ re.all (str.to_re "t</bdo") re.all) (re.comp ((_ re.from_regex ecma2020) "[0-9]{1,15}$"))) (re.comp ((_ re.from_regex ecma2020) "^[a-z0-9](\.?[a-z0-9_-]){0,}@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$")))))))
(check-sat)
