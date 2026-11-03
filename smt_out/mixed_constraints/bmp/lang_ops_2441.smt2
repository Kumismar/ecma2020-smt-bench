; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;IMG SRC=JaVaScRiPt\u{1d400}:alert(';XSS';)>;") (= x "<xmp id=x tabindex=1 onbeforedeactivate=alert(1)></xmp><input autofocus>") (= x "<big onmousedown=""alert(1)"">test</big>")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'*+=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$") ((_ re.from_regex ecma2020) "^([wW]{3}[\.][a-zA-Z0-9\.\-]+\.[a-zA-Z]+)*$")) ((_ re.from_regex ecma2020) "[0]*(?=[1-9])(1?[0-9]{0,2})|([1-9][0-9])|[1-9]")))))
(check-sat)
