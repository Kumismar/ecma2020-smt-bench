; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style o\u{1f4a9}ncontextmenu=""alert(1)"">test</style>") (= x "<ins onk\u{1f600}eypress=""alert(1)"" contenteditable>\u{1d400}test</ins>") (= x "<rtc id=x tabindex=1 onbeforedeactivate=alert(1)></rtc><input autofocus>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(https?:\/\/)?((?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61})?)?[A-Za-z0-9]\\.)*[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})?(\.[a-zA-Z]{2,})?\.[a-zA-Z]{2,}\/?(:[0-9]{1,5})?$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9._-]+@[A-Za-z0-9-]+\.[a-z]{2,5}$"))))
(check-sat)
