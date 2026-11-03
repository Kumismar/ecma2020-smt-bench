; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<isindex draggable=""true"" ondragend=""alert(1)"">test</isindex>") (= x "<tbo\u{1f4a9}dy draggable=""true\u{1f600}"" ondragleave=""alert(1)"">test</tbody>") (= x "<wbr onmouseup=""alert(1)"">test</wbr>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{1,15}") ((_ re.from_regex ecma2020) "[\u{410}-\u{42f}\u{430}-\u{44f}\s\W0-9]+"))))
(check-sat)
