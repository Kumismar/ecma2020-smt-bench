; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<span oncut=""alert(1)"" contenteditable>test</span>") (= x "<svg><source onload=alert(1)></source>") (= x "<colgroup onfocusout=alert(1) tabindex=1 id=x></colgroup><input autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?=.*[a-zA-Z])(?=\w*[0-9])\w{6,12}$") (re.diff (re.++ re.all (str.to_re "/span>")) ((_ re.from_regex ecma2020) "(?=[-_a-zA-Z0-9]*?[A-Z])(?=[-_a-zA-Z0-9]*?[a-z])(?=[-_a-zA-Z0-9]*?[0-9])[-_a-zA-Z0-9]{6,}")))))
(check-sat)
