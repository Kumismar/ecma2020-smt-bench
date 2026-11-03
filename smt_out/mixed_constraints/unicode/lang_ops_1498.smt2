; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x """`'><script>\xE2\x80\xA8javascript:alert(1)</script>") (= x "<div id=""42""><head><base href=""javascript://""/></head><body><a href=""/. /,alert(42)//#"">XXX</a></body>//[""'`-->]]>]</div>") (= x "<th onkeyup=""alert(1)"" contenteditable>test</th>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^((?!www.).)*$") ((_ re.from_regex ecma2020 u) "^.{7,30}$")) ((_ re.from_regex ecma2020 u) "[0-9]{2}[/][0-9]{2}"))))
(check-sat)
