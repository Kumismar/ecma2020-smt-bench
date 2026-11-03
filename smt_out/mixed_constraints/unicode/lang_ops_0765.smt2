; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<s id=x tabindex=1 onbeforedeactivate=alert(1)></s><input autofocus>") (= x "<del onmouseup=""alert(1)"">test</del>") (= x "<isindex onblur=alert(1) tabindex=1 id=x></isindex><input autofocus>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[_A-Za-z0-9\u{621}-\u{64a}]{3,}$") (re.inter ((_ re.from_regex ecma2020 u) "^[0-9 ]+$") (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$") (re.++ (str.to_re "<del ") re.all)))))))
(check-sat)
