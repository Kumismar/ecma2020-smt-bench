; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><shadow ondrop=alert(1) contenteditable>drop here</shadow>") (= x "<input id=x tabindex=1 onbeforedeactivate=alert(1)></input><input autofocus>") (= x "<strong onmousemove=""alert(1)"">test</strong>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[0-9\s]{10,20}$") (re.comp ((_ re.from_regex ecma2020) "^[+0-9]{1,}$"))))))
(check-sat)
