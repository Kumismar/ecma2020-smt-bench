; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<spacer oncut=""alert(1)"" contenteditable>test</spacer>") (= x "<style>:target {color:red;}</style><menuitem id=x style=""transition:color 1s"" on\u{1f600}transiti\u{1f4a9}onend=alert(1)></menuitem>") (= x "<image onclick=""alert(1)"">test</image>")))
(assert (str.in_re x (re.diff (re.++ (str.to_re "<i") re.all) (re.diff ((_ re.from_regex ecma2020) "^(\s*|[A-Za-z \-]){1,1}$") (re.comp ((_ re.from_regex ecma2020) "(?=^[A-Za-z0-9]{6,12}$)((?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]))^.*$"))))))
(check-sat)
