; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<handler xmlns:ev=""http://www.w3.org/2001/xml-events"" ev:event=""load"">alert(94)</handler>") (= x "<div onpaste=""alert(1)"" contenteditable>test</div>") (= x "<video draggable=""true"" ondragenter=""alert(1)"">test</video>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z]).{4,}"))))
(check-sat)
