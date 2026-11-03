; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&#X000003\u{20000}C;") (= x "<var onfocusout=alert(1) tabindex=1 id=x></var><input autofocus>") (= x "<mark id=x tabindex=1 onbeforedeactivate=alert(1)></mark><input autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\u{11f}\u{fc}\u{15f}\u{131}\u{f6}\u{e7}\u{11e}\u{dc}\u{15e}\u{130}\u{d6}\u{c7} ]+[a-zA-Z\u{11f}\u{fc}\u{15f}\u{131}\u{f6}\u{e7}\u{11e}\u{dc}\u{15e}\u{130}\u{d6}\u{c7}]") ((_ re.from_regex ecma2020) "^(\+420|\+421|00420|00421)?[ ]*[0-9]{3}[ ]*[0-9]{3}[ ]*[0-9]{3}$"))))
(check-sat)
