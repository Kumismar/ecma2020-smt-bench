; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<source id=x tabindex=1 onfocus=alert(1)></source>") (= x "<div draggable=""true"" contenteditable>drag me</div><frame ondragover=alert(1) contenteditable>drop here</frame>") (= x "<IMG SRC=&#0000106&#0000097&#0000118&#0000097&#0000115&#0000099&#0000114&#0000105&#0000112&#0000116&#0000058&#0000097&")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z. ]+[A-Za-z.]+") ((_ re.from_regex ecma2020 u) "^.{0,25}$"))))
(check-sat)
