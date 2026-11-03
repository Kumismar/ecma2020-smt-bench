; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<nobr draggable=""true"" ondragstart=""alert(1)"">test</nobr>") (= x "<a href=""javascript\x09:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<embed draggable=""true"" ondragleave=""alert(1)"">test</embed>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$") ((_ re.from_regex ecma2020 u) "^((?!Edwardpeade)(?!edwardpeade)(?!Johnnygraro)(?!johnnygraro)(?!HectorHef).)*$")))))
(check-sat)
