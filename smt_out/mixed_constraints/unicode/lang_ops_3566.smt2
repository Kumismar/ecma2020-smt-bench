; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ul ondblclick=""alert(1)"">test</ul>") (= x "<strong onmouseleave=""alert(1)"">test</strong>") (= x "<basefont onmouseleave=""alert(1)"">test</basefont>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d{1,4}$") ((_ re.from_regex ecma2020 u) "[\u{5c}u00C0-\u{5c}u1FFF\u{5c}u2C00-\u{5c}uD7FF\w\.\- ]{2,25}")))))
(check-sat)
