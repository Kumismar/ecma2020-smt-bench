; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<footer onmousemove=""alert(1)"">test</footer>") (= x "<abbr onmouseleave=""alert(1)"">test</abbr>") (= x "<label onkeypress=""alert(1)"" contenteditable>test</label>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^\+?\d+$") ((_ re.from_regex ecma2020 u) "^([0-9 ]){4,4}$")) (re.comp ((_ re.from_regex ecma2020 u) "^.{0,24}$"))))))
(check-sat)
