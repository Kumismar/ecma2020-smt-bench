; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<th onmouseout=""alert(1)"">test</th>") (= x "<time onbeforepaste=""alert(1)"" contenteditable>test</time>") (= x "<script onbeforepaste=""alert(1)"" contenteditable>test</script>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z].{2,}") ((_ re.from_regex ecma2020) "^((https?|ftp)://)?[^\s/$.?#]*\.[^\s]*$"))))))
(check-sat)
