; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><figure id=x style=""transition:color 1s"" ontransitionend=alert(1)></figure>") (= x "<nav id=x tabindex=1 ondeactivate=alert(1)></nav><input id=y autofocus>") (= x "<small onkeydown=""alert(1)"" contenteditable>test</small>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]*") (re.comp ((_ re.from_regex ecma2020 u) "^[^@]+@[^@]+[.]{1}[^@]{2,}$"))))))
(check-sat)
