; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onsuspend=""alert(String.fromCharCode(88,83,83))"">") (= x "<isindex onfocusout=alert(1) tabindex=1 id=x></isindex><input autofocus>") (= x "<style>:target {color:red;}</style><multicol id=x style=""transition:color 1s"" ontransitionend=alert(1)></multicol>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^1(3|5|7|8)\d{9}") ((_ re.from_regex ecma2020 u) "^(['a-zA-z\u{430}-\u{44f}\u{410}-\u{44f}\u{401}\u{451}]\s?-?){2,50}$"))))))
(check-sat)
