; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<title id=x tabindex=1 onfocusin=alert(1)></title>") (= x "<time onbeforecopy=""alert(1)"" contenteditable>test</time>") (= x "<embed width=500 height=500 code=""data:text/html,<script>%(payload)s</script>""></embed>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\.\-\+])+@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$") (re.inter ((_ re.from_regex ecma2020 u) "^\S*$") (re.comp (re.++ re.all (str.to_re ">")))))))
(check-sat)
