; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<details id=x tabindex=1 onactivate=alert(1)></details>") (= x "'>alert(1)</script><script/1='") (= x "<svg onmousemove=""alert(1)"">test</svg>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0]*(?=[1-9])(1?[0-9]{0,2})|([1-9][0-9])|[1-9]") ((_ re.from_regex ecma2020 u) "^[0-9\(\)\+\- ]{3,45}$")))))
(check-sat)
