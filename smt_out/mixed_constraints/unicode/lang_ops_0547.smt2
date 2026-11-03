; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<blink onbeforepaste=""alert(1)"" contenteditable>test</blink>") (= x "<script>ReferenceError.prototype.__defineGetter__('name', function(){alert(123)}),x</script>") (= x "<SCRIPT SRC=http://ha.ckers.org/xss.js></SCRIPT>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{5,7}$") ((_ re.from_regex ecma2020 u) "[6-9]\d{9}")))))
(check-sat)
