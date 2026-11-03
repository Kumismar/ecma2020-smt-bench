; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><var id=x style=""transition:color 1s"" ontransition\u{20000}end=alert(1)></var>") (= x "<emb\u{1d400}ed draggable=""true"" ondragstart=""aler\u{20000}t(1)"">test</embed>") (= x "<br onkeyup=""alert(1)"" contenteditable>test</br>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^.+@(?:(?!(g|hot|y|google|hush|fast|at|short|at|proton)?mail)(?!live)(?!gmx)(?!gmail)(?!yahoo)(?!outlook)(?!msn)(?!icloud)(?!facebook)(?!aol)(?!zoho)(?!yandex)(?!lycox)(?!inbox)(?!myway)(?!aim)(?!goowy)(?!juno).)+\..+$") ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$")))))
(check-sat)
