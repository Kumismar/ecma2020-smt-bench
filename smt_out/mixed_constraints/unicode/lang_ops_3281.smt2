; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script>var var = 1; alert(var)</script>") (= x "<th oncontextmenu=""alert(1)"">test</th>") (= x "<form draggable=""true"" ondrag=""alert(1)"">test</form>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^( *)((([Gg][ ]*)([Ii][ ]*)([Rr][ ]*)0[ ]*([Aa][ ]*){2})|((([A-Za-z][ ]*([0-9][ ]*){1,2})|(([A-Za-z][ ]*[A-Ha-hJ-Yj-y][ ]*([0-9][ ]*){1,2})|(([A-Za-z][ ]*[0-9][ ]*[A-Za-z][ ]*)|([A-Za-z][ ]*[A-Ha-hJ-Yj-y][ ]*[0-9][ ]*[A-Za-z]?[ ]*))))( *)[0-9][ ]*([A-Za-z][ ]*){2}))( *)$") ((_ re.from_regex ecma2020 u) "^[A-\u{139}\u{13e}0-9-:&.'_ ]{2,}$")))))
(check-sat)
