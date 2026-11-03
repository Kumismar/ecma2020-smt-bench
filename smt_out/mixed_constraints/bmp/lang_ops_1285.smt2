; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ins onblur=alert(1) tabindex=1 id=x></ins><input autofocus>") (= x "<rt onmouseout=""alert(1)"">test</rt>") (= x "<svg><meter onload=alert(1)></meter>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$") (re.++ (str.to_re "<svg") re.all)) (re.comp ((_ re.from_regex ecma2020) "[0-9]+([,][0-9]{1,2})")))))
(check-sat)
