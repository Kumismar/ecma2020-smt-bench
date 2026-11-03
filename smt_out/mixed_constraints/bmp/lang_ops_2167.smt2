; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<fieldset onbeforecopy=""alert(1)"" contenteditable>test</fieldset>") (= x "<x onclick=alert(1)>click this!") (= x "<div id=""133""><!-- `<img/src=xx:xx onerror=alert(133)//--!>//[""'`-->]]>]</div>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) ".{2,50}$") ((_ re.from_regex ecma2020) "^([\w+-.%]+@[\w\-.]+\.[A-Za-z]{2,4},*[\W]*)+$")))))
(check-sat)
