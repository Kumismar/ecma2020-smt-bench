; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "</math>//[""'`-->]]>]</div>") (= x "<nextid oncut=""alert(1)"" con\u{1d400}tentedit\u{1f4a9}able>test</nextid>") (= x "<sup onblur=alert(1) ta\u{1d400}bindex=1 id=x></s\u{20000}up><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[a-z]") (re.comp ((_ re.from_regex ecma2020 u) "[0-9]+([\.,][0-9]{0,2})?"))))))
(check-sat)
