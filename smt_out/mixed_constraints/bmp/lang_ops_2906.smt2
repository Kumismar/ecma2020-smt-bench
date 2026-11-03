; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<!a foo=x=`y><img alt=""`><img src=xx:x onerror=alert(2)//"">") (= x "<div draggable=""true"" contenteditable>drag me</div><bdo ondrop=alert(1) contenteditable>drop here</bdo>") (= x "<data onmousedown=""alert(1)"">test</data>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]{3,25}$"))) (re.++ (str.to_re "<dat") re.all)))))
(check-sat)
