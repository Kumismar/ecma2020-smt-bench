; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b\u{1d400}do draggable=""true"" ond\u{1f4a9}ragleave=""alert(1)"">test</bdo>") (= x "<dt onmousedown=""alert(1)"">test</dt>") (= x "<svg contentScriptType=text/vbs><script>MsgBox+1")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^AI\d{3,7}|AX\d{3,7}$") ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}]+$"))))
(check-sat)
