; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\xC2\xA0javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<mark draggable=""true"" ondragstart=""alert(1)"">test</mark>") (= x "<u id=x tabindex=1 ondeactivate=alert(1)></u><input id=y autofocus>")))
(assert (not (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "^.+@.+.[a-zA-Z]{2,63}$") (re.comp ((_ re.from_regex ecma2020) "^[\w-]+$"))) ((_ re.loop 48 60) re.allchar))))))
(check-sat)
