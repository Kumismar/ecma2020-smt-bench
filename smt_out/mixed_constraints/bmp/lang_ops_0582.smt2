; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<marquee draggable=""true"" ondragstart=""alert(1)"">test</marquee>") (= x "'-alert(1)//") (= x "<isindex onfocusout=alert(1) tabindex=1 id=x></isindex><input autofocus>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^([0-9]{6})-([0-9]{2})-([0-9]{4})$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_]{4,}$")) (re.comp (re.++ re.all (str.to_re "rquee>"))))))
(check-sat)
