; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<body BACKGROUND=""javascript:document.vulnerable=true;"">") (= x "<q draggable=""true"" ondragstart=""alert(1)"">test</q>") (= x "<figure onmousemove=""alert(1)"">test</figure>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d{3}$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{3,}$") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}")))))))
(check-sat)
