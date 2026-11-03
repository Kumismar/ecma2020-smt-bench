; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script onmouseout=""alert(1)"">test</script>") (= x "<title oncopy=""alert(1)"" contenteditable>test</title>") (= x "<style>:target {color:red;}</style><meta id=x style=""transition:color 1s"" ontransitionend=alert(1)></meta>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^([a-zA-Z0-9._+!-]+[@](?:[a-zA-Z0-9-]+.)+[a-zA-Z]{2,})$") ((_ re.from_regex ecma2020) "^1[3456789]\d{9}$")))))
(check-sat)
