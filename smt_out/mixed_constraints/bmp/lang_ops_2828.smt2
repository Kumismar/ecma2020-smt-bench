; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noscript id=x tabindex=1 ondeactivate=alert(1)></noscript><input id=y autofocus>") (= x "<div id=""88""><svg xmlns=""http://www.w3.org/2000/svg"" xmlns:xlink=""http://www.w3.org/1999/xlink"">") (= x "<x o%6Exxx=1")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f6}\u{3000}\s]+$") (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z]+.*\S.*"))))))
(check-sat)
