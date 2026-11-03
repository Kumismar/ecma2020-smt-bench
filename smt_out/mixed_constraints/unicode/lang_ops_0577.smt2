; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<select draggable=""true"" ondrag=""alert(1)"">test</select>") (= x "<aside id=x tabindex=1 onbe\u{1f4a9}foreactivate=alert(1)></aside>") (= x "<style/onload=prompt&#40;'&#88;&#83;&#83;'&#41;")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(\d{10}|\d{10})$") ((_ re.from_regex ecma2020 u) "^[1](([3][0-9])|([4][5-9])|([5][0-3,5-9])|([6][5,6])|([7][0-8])|([8][0-9])|([9][1,8,9]))[0-9]{8}$")))))
(check-sat)
