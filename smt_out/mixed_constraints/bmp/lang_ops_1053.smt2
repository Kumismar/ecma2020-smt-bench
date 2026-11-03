; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><datalist id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></datalist>") (= x "<blockquote id=x tabindex=1 onbeforedeactivate=alert(1)></blockquote><input autofocus>") (= x "perl -e 'print \""&lt;SCR\0IPT&gt;alert(\\""XSS\\"")&lt;/SCR\0IPT&gt;\"";'\u{10348} &gt; out")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^[^<>\/]+$") (re.++ (str.to_re "p") re.all)) (re.diff ((_ re.from_regex ecma2020) ".*^[2-9]\d{2}-\d{3}-\d{4}$.*") (re.comp ((_ re.from_regex ecma2020) "\(\d\d\) \d\d\d\d\d-\d\d\d\d$"))))))
(check-sat)
