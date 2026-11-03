; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<base id=x tabindex=1 ondeactivate=alert(1)></base><input id=y autofocus>") (= x "<var onfocusout=alert(1) tabindex=1 id=x></var><input autofocus>") (= x "<figure draggable=""true"" ondragleave=""alert(1)"">test</figure>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([0-9]){5}") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(([\w\.\-]+)@([\w_\-]+)\.([\w_\.\-]*)[a-z][a-z])?$") (re.comp ((_ re.from_regex ecma2020 u) "^\d{9,13}$"))))))))
(check-sat)
