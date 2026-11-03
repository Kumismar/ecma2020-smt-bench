; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<tr oncontextmenu=""alert(1)"">test</tr>") (= x "<svg id=x tabindex=1 onbefore\u{1f4a9}activate=alert(1)></svg>") (= x "<ol onkeypress=""alert(1)"" contenteditable>test</ol>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$") (re.comp (re.union ((_ re.loop 48 64) re.allchar) (re.comp ((_ re.from_regex ecma2020) ".*^[2-9]\d{2}-\d{3}-\d{4}$.*"))))))))
(check-sat)
