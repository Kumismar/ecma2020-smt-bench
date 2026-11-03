; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><b id=x style=""transition:color 1s"" ontransitionend=alert(1)></b>") (= x "<frame id=x tabindex=1 onbeforedeactivate=alert(1)></frame><input autofocus>") (= x "<iframe src=javascript&colon;alert&lpar;document&period;location&rpar;>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z- ]*$") (re.comp ((_ re.from_regex ecma2020 u) "^[\w.!#$%&?*+/=?^_`{|}~-]+@[\w-]+(?:\.[\w-]+)*$"))))))
(check-sat)
