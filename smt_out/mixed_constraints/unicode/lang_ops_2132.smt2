; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bgsound draggable=""true"" ondragend=""alert(1)"">test</bgsound>") (= x "<map onbeforepaste=""alert(1)"" contenteditable>test</map>") (= x "<map draggable=""true"" ondragend=""alert(1)"">test</map>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^((?:[a-z]+[0-9_\.-]*)+[a-z0-9_\.-]*)@((?:[a-z0-9]+[\.-]*)+\.[a-z]{2,4})$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z]+(\s[a-zA-Z]+)?$")) ((_ re.from_regex ecma2020 u) "^[0-9\s]{1,4}$")))))
(check-sat)
