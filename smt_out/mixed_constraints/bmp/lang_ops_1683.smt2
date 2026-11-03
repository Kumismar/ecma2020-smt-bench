; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=# onmouseover=""alert('xxs')"">") (= x "<iframe %00 src=""&Tab;javascript:prompt(1)&Tab;""%00>") (= x "<dd onmouseleave=""alert(1)"">test</dd>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "((?=^.{6,}$).*$)") (re.diff ((_ re.from_regex ecma2020) "^(1)[0-9]{10}$") ((_ re.loop 34 38) re.allchar))))))
(check-sat)
