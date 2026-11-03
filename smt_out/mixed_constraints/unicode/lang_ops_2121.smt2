; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><fieldset id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></fieldset>") (= x "<spacer draggable=""true"" ondragend=""alert(1)"">test</spacer>") (= x "<sVg><scRipt >alert&lpar;1&rpar; {Opera}")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1|)\d{1,4}-\d{1,18}$") ((_ re.from_regex ecma2020 u) "^[\u{430}-\u{44f}\u{410}-\u{44f}a-zA-z,\s]+$"))))
(check-sat)
