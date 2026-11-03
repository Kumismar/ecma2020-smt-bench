; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<area id=x tabindex=1 ondeactivate=alert(1)></area><input id=y autofoc\u{1d400}us>") (= x "<small id=x tabindex=1 onbeforeactivate=alert(1)></small>") (= x "<tr draggable=""true"" ondragend=""alert(1)"">test</tr>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "(?=^.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$") (re.union ((_ re.from_regex ecma2020) "^(351|\d{2})$") (re.comp (re.++ (str.to_re "<smal") re.all))))))))
(check-sat)
