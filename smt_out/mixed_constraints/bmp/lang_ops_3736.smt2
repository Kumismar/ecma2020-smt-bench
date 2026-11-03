; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rtc onmousedown=""alert(1)"">test</rtc>") (= x "<article draggable=""true"" ondragenter=""alert(1)"">test</article>") (= x "<isindex onbeforecopy=""alert(1)"" contenteditable>test</isin\u{1f600}dex>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?") ((_ re.from_regex ecma2020) "^([a-eA-E])*$")) ((_ re.from_regex ecma2020) "[^& ]*"))))
(check-sat)
