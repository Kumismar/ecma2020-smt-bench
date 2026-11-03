; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<article onpaste=""alert(1)"" contenteditable>test</article>") (= x "</script><script>alert(1)</script>") (= x "<nav onkeydown=""alert(1)"" contenteditable>test</nav>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\S+(\s*\S+)*") (re.inter ((_ re.from_regex ecma2020) "[0-9A-Za-z\u{5c}u00C0-\u{5c}u00FF]+") (re.comp ((_ re.from_regex ecma2020) "^[\w.%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"))))))
(check-sat)
