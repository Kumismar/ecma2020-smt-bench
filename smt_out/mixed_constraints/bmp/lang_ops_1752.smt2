; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<hgroup ondblclick=""alert(1)"">test</hgroup>") (= x "<img onfocusout=alert(1) tabindex=1 id=x></img><input autofocus>") (= x "<applet draggable=""true"" ondragleave=""alert(1)"">test</applet>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^\S[-'\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$") ((_ re.from_regex ecma2020) "^[\x20-\x7e\x80-\xff]*$")))))
(check-sat)
