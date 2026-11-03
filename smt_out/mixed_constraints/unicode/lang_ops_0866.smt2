; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<acronym onmousemove=""alert(1)"">test</acronym>") (= x "<th draggable=""true"" ondragend=""alert(1)"">test</th>") (= x "<figcaption onbeforecut=""alert(1)"" contenteditable>test</figcaption>")))
(assert (not (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^(05)[0-9][0-9][1-9]([0-9]){6}$") (re.comp (re.++ (str.to_re "<acr") re.all))) (re.comp ((_ re.from_regex ecma2020 u) "^\d*\.?\d{0,2}"))))))
(check-sat)
