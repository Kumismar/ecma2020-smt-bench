; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sub onclick=""alert(1)"">test</sub>") (= x "<listing onmouseout=""alert(1)"">test</listing>") (= x "<strong id=x tabindex=1 ondeactivate=alert(1)></strong><input id=y autofocus>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "([a-zA-Z0-9 _.-]){3,20}") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$"))))))
(check-sat)
