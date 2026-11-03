; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<big on\u{10348}mouseup=""alert(1)"">test</big>") (= x "<button autofocus onfocusin=alert(1)>test</button>") (= x "<keygen draggable=""true"" ondragleave=""alert(1)"">test</keygen>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(\+91[\-\s]?)?[0]?(\+91.[\-\s]?)?[0]?(91)?[6789]\d{9}$") (re.diff ((_ re.from_regex ecma2020) "[0-9]+[0-9]$") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9\?\-\.+!_]{3,14}$")))))
(check-sat)
