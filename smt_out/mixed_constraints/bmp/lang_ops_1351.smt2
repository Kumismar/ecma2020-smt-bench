; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<col onkeydown=""alert(1)"" contenteditable>test</col>") (= x "<template oncontextmenu=""alert(1)"">test</template>") (= x "<rt onpaste=""alert(1)"" contenteditable>test</rt>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\d{2}[ ]?\d{3}") (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9 '.]+$") ((_ re.from_regex ecma2020) "^[6|7][0-9]{8}$")))))
(check-sat)
