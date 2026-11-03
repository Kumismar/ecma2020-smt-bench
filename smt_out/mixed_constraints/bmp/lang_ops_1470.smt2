; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<element oncontextmenu=""alert(1)"">test</element>") (= x "<X onxxx=1") (= x "<datalist onmousemove=""alert(1)"">test</datalist>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "^([0-9A-z/ ]){1,}$") (re.diff (re.++ (str.to_re "<datal") re.all) ((_ re.from_regex ecma2020) "^[a-zA-Z \u{c9}\u{c8}\u{ca}\u{cb}\u{c7}\u{c0}\u{e9}\u{e8}\u{ea}\u{eb}\u{e7}\u{e0}'-]{2,}$"))))))
(check-sat)
