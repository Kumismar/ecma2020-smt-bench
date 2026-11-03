; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><li ondragover=alert(1) contenteditable>drop here</li>") (= x "<div draggable=""true"" contenteditable>drag me</div><source ondragover=alert(1) contenteditable>drop here</source>") (= x "<time id=x tabindex=1 onfocusin=alert(1)></time>")))
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^.+\@.+\..+$") ((_ re.from_regex ecma2020) "^(\+36)([0-9]{8,9})$")) ((_ re.from_regex ecma2020) "^[\u{410}-\u{44f}- ]+"))))
(check-sat)
