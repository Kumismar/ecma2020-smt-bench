; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) ".*(?:^[A-Za-z\u{e1}\u{10d}\u{10f}\u{e9}\u{11b}\u{ed}\u{148}\u{f3}\u{159}\u{161}\u{165}\u{16f}\u{fa}\u{fd}\u{17e}\u{c1}\u{10c}\u{10e}\u{c9}\u{cd}\u{11a}\u{147}\u{d3}\u{158}\u{160}\u{164}\u{da}\u{16e}\u{dd}\u{17d}\s]*)") ((_ re.from_regex ecma2020) "^[A-Za-z\u{e1}\u{10d}\u{10f}\u{e9}\u{11b}\u{ed}\u{148}\u{f3}\u{159}\u{161}\u{165}\u{16f}\u{fa}\u{fd}\u{17e}\u{c1}\u{10c}\u{10e}\u{c9}\u{cd}\u{11a}\u{147}\u{d3}\u{158}\u{160}\u{164}\u{da}\u{16e}\u{dd}\u{17d}\s]*")) (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z\u{e1}\u{10d}\u{10f}\u{e9}\u{11b}\u{ed}\u{148}\u{f3}\u{159}\u{161}\u{165}\u{16f}\u{fa}\u{fd}\u{17e}\u{c1}\u{10c}\u{10e}\u{c9}\u{cd}\u{11a}\u{147}\u{d3}\u{158}\u{160}\u{164}\u{da}\u{16e}\u{dd}\u{17d}\s]*") ((_ re.from_regex ecma2020) ".*(?:^[A-Za-z\u{e1}\u{10d}\u{10f}\u{e9}\u{11b}\u{ed}\u{148}\u{f3}\u{159}\u{161}\u{165}\u{16f}\u{fa}\u{fd}\u{17e}\u{c1}\u{10c}\u{10e}\u{c9}\u{cd}\u{11a}\u{147}\u{d3}\u{158}\u{160}\u{164}\u{da}\u{16e}\u{dd}\u{17d}\s]*)")))))
(check-sat)
