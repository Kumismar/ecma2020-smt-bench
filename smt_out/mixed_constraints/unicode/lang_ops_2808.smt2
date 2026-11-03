; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<noembed oncut=""alert(1)"" contenteditable>test</noembed>") (= x "<img src\x09=x onerror=""javascript:alert(1)"">") (= x "<bgsound draggable=""true"" ondragend=""alert(1)"">test</bgsound>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "(?=^.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$") ((_ re.from_regex ecma2020 u) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"))))))
(check-sat)
