; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "</style &#32;><script &#32; :-(>/**/alert(document.location)/**/</script &#32; :-(") (= x "<hgroup draggable=""true"" ondragstart=""alert(1)"">test</hgroup>") (= x "<th draggable=""true"" ondragleave=""alert(1)"">test</th>")))
(assert (str.in_re x (re.comp (re.inter (re.inter (re.union ((_ re.from_regex ecma2020 u) "^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$") (re.++ re.all (str.to_re "ggabl") re.all)) ((_ re.from_regex ecma2020 u) "^[A-Za-z]{1,}")) (re.comp ((_ re.from_regex ecma2020 u) "^1{0,1}(\(\d{3}\)\d{3}-\d{4}|\d{10})"))))))
(check-sat)
