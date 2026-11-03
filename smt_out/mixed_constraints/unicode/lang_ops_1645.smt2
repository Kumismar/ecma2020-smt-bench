; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&lt;SCRIPT a=`&gt;` SRC=&quot;http://ha.ckers.org/xss.js&quot;&gt;&lt;/SCRIPT&gt;") (= x "<tbody onmouseover\u{10348}=""alert(1)"">test</tbody>") (= x "<track onkeydown=""alert(1)"" contenteditable>test</track>")))
(assert (str.in_re x (re.comp (re.diff (re.inter ((_ re.from_regex ecma2020 u) "(?=^.{8,128}$)^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$") (re.++ re.all (str.to_re ";&g") re.all)) ((_ re.from_regex ecma2020 u) "^([0-9]{3}|[0-9]{7})$")))))
(check-sat)
