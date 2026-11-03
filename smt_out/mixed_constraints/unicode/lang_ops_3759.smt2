; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<p id=x tabindex=1 onactivate=alert(1)></p>") (= x "<div draggable=""true"" contenteditable>drag me</div><cite ond\u{1f4a9}ragover=alert(1) contenteditable>drop here</cite>") (= x "<xmp id=x tabindex=1 onfocus=alert(1)></xmp>")))
(assert (not (str.in_re x (re.inter (re.diff (re.++ re.all (str.to_re " ta") re.all) (re.diff ((_ re.from_regex ecma2020 u) "\d{4}-\d{6}") ((_ re.from_regex ecma2020 u) "[1-5][0-9][0-9]"))) ((_ re.from_regex ecma2020 u) ".+@[a-z0-9.-]+\.[a-z]{2,}")))))
(check-sat)
