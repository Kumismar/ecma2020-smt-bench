; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script draggab\u{1d400}le=""true"" ondrag=""alert(1)"">te\u{10348}st</script>") (= x "<bgsound onfocusout=alert(1) tabindex=1 id=x></bgsound><input autofocus>") (= x "<style>@keyframes x{}</style><link style=""animation-name:x"" onanimationend=""alert(1)""></link>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z]+(\s+[a-zA-Z]+)*$") ((_ re.from_regex ecma2020 u) "^(\d{9})$")))))
(check-sat)
