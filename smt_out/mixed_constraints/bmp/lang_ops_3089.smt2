; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ruby onbeforecopy=""alert(1)"" contenteditable>test</ruby>") (= x "<font onblur=alert(1) tabindex=1 id=x></font><input autofocus>") (= x "<small onmouseenter=""alert(1)"">test</small>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "([a-zA-Z0-9_.+-])+@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$") (re.++ (str.to_re "<sma") re.all)) ((_ re.from_regex ecma2020) "[0-9]{0,1}"))))
(check-sat)
