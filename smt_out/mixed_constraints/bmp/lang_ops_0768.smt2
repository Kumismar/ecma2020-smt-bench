; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<samp draggable=""true"" ondragenter=""alert(1)"">test</samp>") (= x "<main onkeydown=""alert(1)"" contenteditable>test</main>") (= x "<!--[if gte IE 4]><SCRIPT>document.vulnerable=true;</SCRIPT><![endif]-->")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[A-Za-z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\s]{1,32}") ((_ re.from_regex ecma2020) "^(?!.*gmail|.*outlook|.*yahoo|.*hotmail|.*lexter).*$"))))))
(check-sat)
