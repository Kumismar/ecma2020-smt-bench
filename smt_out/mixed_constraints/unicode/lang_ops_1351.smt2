; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<strong onblur=alert(1) tabindex=1 id=x></strong><input autofocus>") (= x "<style>:target {color:red;}</style><tt id=x style=""transition:color 1s"" ontransitionend=alert(1)></tt>") (= x "<script /**/>/**/alert(1)/**/</script /**/")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^0\d(?:\d{2}){4}$") (re.comp ((_ re.from_regex ecma2020 u) "^[\\(]{0,1}([0-9]){3}[\\)]{0,1}[ ]?([^0-1]){1}([0-9]){2}[ ]?[-]?[ ]?([0-9]){4}[ ]*((x){0,1}([0-9]){1,5}){0,1}$")))))
(check-sat)
