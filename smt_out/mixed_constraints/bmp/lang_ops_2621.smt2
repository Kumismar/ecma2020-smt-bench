; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<template id=x tabindex=1 ondeactivate=alert(1)></template><input id=y autofocus>") (= x "<blockquote id=x tabindex=1 onactivate=alert(1)></blockquote>") (= x "<head onbeforepaste=""alert(1)"" contenteditable>test</head>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z]+[,.]?[ ]?|[a-z]+['-]?)+$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{104}\u{107}\u{107}\u{119}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{179}\u{179} ]{4,30}$"))))
(check-sat)
