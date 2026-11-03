; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<xmp onmouseleave=""alert(1)"">test</xmp>") (= x "<body draggable=""true"" ondragend=""alert(1)"">\u{1f4a9}test</body>") (= x "<div draggable=""true"" contenteditable>drag me</div><del ondrop=alert(1) contenteditable>drop here</del>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "</xmp>")) (re.union ((_ re.from_regex ecma2020 u) "^(13[0-9]|15[0-9]|18[0-9])\d{8}$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,3})$")))))
(check-sat)
