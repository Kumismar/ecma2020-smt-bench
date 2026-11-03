; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=javascript:alert('XSS')>") (= x "<frameset onbeforecopy=""alert(1)"" contenteditabl\u{20000}e>test</frameset>") (= x "<s id=x tabindex=1 onactivate=alert(1)></s>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9].*") ((_ re.from_regex ecma2020 u) "^(\w\w+)+(\s\w+)*"))))
(check-sat)
