; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<input type=radio id=x onfocus=alert(1)>") (= x "<map onfocusout=alert(1) tabindex=1 id=x></map><input autofocus>") (= x "<div draggable=""true"" contenteditable>drag me</div><dir ondragover=alert(1) contenteditable>drop here</dir>")))
(assert (str.in_re x (re.comp (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^CB\d{3,7}|cb\d{3,7}$") ((_ re.from_regex ecma2020 u) ".{2,60}")) ((_ re.from_regex ecma2020 u) "^\d{5}(?:-\d{4})?$")))))
(check-sat)
