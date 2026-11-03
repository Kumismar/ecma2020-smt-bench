; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html onMouseMove html onMouseMove=""javascript:javascript:alert(1)""></html onMouseMove>") (= x "<IMG SRC=x onhashchange=""alert(String.fromCharCode(88,83,83))"">") (= x "<menu onblur=alert(1) tabindex=1 id=x></menu><input autofocus>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "\w{4,20}") ((_ re.from_regex ecma2020) "\d+(\.\d{1})?")) (re.++ re.all (str.to_re "83))"">")))))
(check-sat)
