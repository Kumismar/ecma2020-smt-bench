; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script id=x tabindex=1 onfocusin=alert(1)></script>") (= x "<img id=x tabindex=1 onfocusin=alert(1)></img>") (= x "<tbody onbeforepaste=""alert(1)"" contenteditable>test</tbody>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^.*[,].*$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9 _]+$")))))
(check-sat)
