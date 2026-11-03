; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><dt onload=alert(1)></dt>") (= x "<basefont onbeforepaste=""alert(1)"" contenteditable>test</basefont>") (= x "<optgroup onfocusout=alert(1) tabindex=1 id=x></optgroup><input au\u{10348}tofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^.{0,40}") ((_ re.from_regex ecma2020) "^[_\.0-9a-zA-Z'+-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$")))))
(check-sat)
