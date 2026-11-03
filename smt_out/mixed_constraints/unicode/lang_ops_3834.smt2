; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<SCRIPT ="">"" SRC=""http://ha.ckers.org/xss.js""></SCRIPT>") (= x "<spacer draggable=""true"" ondragstart=""alert(1)"">test</spacer>") (= x "<shadow onmousemove=""alert(1)"">test</shadow>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[^*]+@[^*]+\.[a-z]{2,4}$") (re.comp ((_ re.from_regex ecma2020 u) "^[0-9-]{6,13}$")))))
(check-sat)
