; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """`'><script>\xE2\x80\x89javascript:alert(1)</script>") (= x "ABC<div style=""x:\xE2\x80\x80expression(javascript:alert(1)"">DEF") (= x "<colgroup oncut=""alert(1)"" contenteditable>test</colgroup>")))
(assert (not (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,7}|[0-9]{1,3})(\]?)$") ((_ re.loop 51 59) re.allchar)) (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\s*1\d{10}\s*$") (re.comp ((_ re.from_regex ecma2020 u) "[a-zA-Z\s.]{3,50}"))))))))
(check-sat)
