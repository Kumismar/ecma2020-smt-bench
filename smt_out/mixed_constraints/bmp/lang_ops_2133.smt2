; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<noembed onblur=alert(1) tabindex=1 id=x></noembed><input autofocus>") (= x "<output id=x tabindex=1 onfocusin=alert(1)></output>") (= x "<mark draggable=""true"" ondragleave=""alert(1)"">test</mark>")))
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^(\+91[\-\s]?)?[0]?(\+91.[\-\s]?)?[0]?(91)?[6789]\d{9}$") ((_ re.from_regex ecma2020) "[7-9][0-9]{9}")) (re.++ (str.to_re "<ou") re.all))))
(check-sat)
