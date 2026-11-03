; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<nextid onmouseleave=""alert(1)"">test</nextid>") (= x """/><img/onerror=\x09javascript:alert(1)\x09src=xxx:x />") (= x "<link id=x tabindex=1 onbeforeactivate=alert(1)></link>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "\+*[0-9]{5,}") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z]{5,5}") ((_ re.loop 37 46) re.allchar))))))
(check-sat)
