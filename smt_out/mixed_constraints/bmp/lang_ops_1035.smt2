; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onload=""alert(String.fromCharCode(88,83,83))"">") (= x "<div id=""66""><?xml version=""1.0""?>") (= x "<nextid onmousedown=""alert(1)"">test</nextid>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?!01000|99999)(0[1-9]\d{3}|[1-9]\d{4})$") (re.comp (re.union ((_ re.from_regex ecma2020) "\d{8}-\d{1}-\d{2}") (re.comp ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5_\u{5c}u3002\u{5c}uff1b\u{5c}uff0c\u{5c}uff1a\u{5c}u201c\u{5c}u201d\u{5c}uff08\u{5c}uff09\u{5c}u3001\u{5c}uff1f\u{5c}u300a\u{5c}u300b_a-zA-Z0-9_]+$"))))))))
(check-sat)
