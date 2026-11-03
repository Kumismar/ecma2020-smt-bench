; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sub id=x tabindex=1 ondeactivate=alert(1)></sub><input id=y autofocus>") (= x "<bdi onkeyup=""alert(1)"" contenteditable>test</bdi>") (= x "<labe\u{10348}l onbeforepaste=""alert(1)"" cont\u{1f4a9}enteditable>test</label>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,7}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 ]{2,50}$")))))
(check-sat)
