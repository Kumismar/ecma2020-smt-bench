; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div id=""110""><svg xmlns=""http://www.w3.org/2000/svg"">") (= x "<figure draggable=""true"" ondragend=""alert(1)"">test</figure>") (= x "<tbo\u{1f4a9}dy draggable=""true\u{1f600}"" ondragleave=""alert(1)"">test</tbody>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{8}|[0-9]{10}|(?=(([0-9]+[^0-9]+)|([a-zA-Z]+[^a-zA-Z]+)|([@._\-]+[^@._\-]+)))[a-zA-Z0-9.@_\-]{8,50}") ((_ re.from_regex ecma2020 u) "[a-zA-Z][a-zA-Z\s']*"))))
(check-sat)
