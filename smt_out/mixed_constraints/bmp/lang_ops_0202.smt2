; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed id=x onfocusin=alert(1) type=text/html>") (= x "<img\x47src=x onerror=""javascript:alert(1)"">") (= x "<tr id=x tabindex=1 onactivate=alert(1)></tr>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "^[+]?[\s./0-9]*[(]?[0-9]{1,4}[)]?[-\s./0-9]*$") (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z\u{e1}\u{10d}\u{10f}\u{e9}\u{11b}\u{ed}\u{148}\u{f3}\u{159}\u{161}\u{165}\u{16f}\u{fa}\u{fd}\u{17e}\u{c1}\u{10c}\u{10e}\u{c9}\u{cd}\u{11a}\u{147}\u{d3}\u{158}\u{160}\u{164}\u{da}\u{16e}\u{dd}\u{17d}\s]*"))) ((_ re.from_regex ecma2020) "[0-9\.]{1,7}"))))
(check-sat)
