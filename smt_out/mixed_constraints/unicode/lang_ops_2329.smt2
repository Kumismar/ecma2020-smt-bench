; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noembed draggable=""true"" ondrag=""alert(1)"">test</noembed>") (= x "<th onmouseup=""alert(1)"">test</th>") (= x "&lt;STYLE&gt;&#46;XSS{background-image&#58;url(\""javascript&#058;alert('XSS')\"");}&lt;/STYLE&gt;&lt;A CLASS=XSS&gt;&lt;/A&gt;")))
(assert (str.in_re x (re.comp (re.union (re.union ((_ re.from_regex ecma2020 u) "[0-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020 u) "(^[^ ]+@[^ ]+\.[^ ].+$)")) (re.++ (str.to_re "&lt;ST") re.all)))))
(check-sat)
