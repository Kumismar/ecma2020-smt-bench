; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\x12javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<scrscriptipt>alert(1)</scrscriptipt>") (= x "<form oncut=""alert(1)"" contenteditable>test</form>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}0-9._%+-]+@[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}0-9.-]+\.[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,9}$") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9_-]{20}$") (re.++ re.all (str.to_re ">"))))))
(check-sat)
