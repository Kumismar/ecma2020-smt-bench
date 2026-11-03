; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sub oncontextmenu=""alert(1)"">test</sub>") (= x "<canvas oncontextmenu=""alert(1)"">test</canvas>") (= x "<link draggable=""true"" ondrag=""alert(1)"">test</link>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[0-9-#,*]{1}[0-9]{6,10}") (re.diff ((_ re.from_regex ecma2020 u) "^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") (re.comp ((_ re.loop 42 47) re.allchar)))))))
(check-sat)
