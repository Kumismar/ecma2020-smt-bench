; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&#\u{10348}X03\u{10348}C") (= x "<SCRIPT/XSS SRC=""http://ha.ckers.org/xss.js""></SCRIPT>") (= x "<div draggable=""true"" contenteditable>drag me</div><option ondragover=alert(1) contenteditable>drop here</option>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[ A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]+") (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^(SI)?[0-9\.\-]{8,10}$") ((_ re.from_regex ecma2020 u) "[a-z|A-Z|0-9|'\u{e0}\u{ec}\u{f2}\u{f9}\u{e8}\u{e9}\s]{2,30}")))))))
(check-sat)
