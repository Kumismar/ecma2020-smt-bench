; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<header oncontextmenu=""alert(1)"">test</header>") (= x "<canvas id=x tabindex=1 onbeforedeactivate=alert(1)></canvas><input \u{1f4a9}autofocus>") (= x "<applet onreadystatechange=alert(1)></applet>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Z]{1}[AEIOUX]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$") (re.comp ((_ re.from_regex ecma2020 u) "[0-9]{1,30}"))))))
(check-sat)
