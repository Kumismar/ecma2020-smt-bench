; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<multicol onbeforecopy=""alert(1)"" contenteditable>test</multicol>") (= x "<!-- IE9+, FF4+, Opera 11.60+, Safari 4.0.4+, GC7+  -->") (= x "<blockquote id=x tabindex=1 onactivate=alert(1)></blockquote>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(\+[1-9]{2})([1-9])([0-9]{6,15}$)") ((_ re.from_regex ecma2020) "^[0][3|5|7|8|9]\d{8}$"))))
(check-sat)
