; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<br ondblclick=""alert(1)"">test</br>") (= x "<img/src=`%00` onerror=this.onerror=confirm(1)") (= x "<spacer onmouseup=""alert(1)"">test</spacer>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}]*$") (re.inter (re.union ((_ re.from_regex ecma2020) "\b[\w\.-]+@((?!gmail|yahoo|outlook|aol|mail|protonmail|icloud|gmx|yandex).)[\w\.-]+\.\w{2,4}\b") (re.++ re.all (str.to_re "acer>"))) ((_ re.from_regex ecma2020) "^[-!#-'*+\/-9=?^-~]+(?:\.[-!#-'*+\/-9=?^-~]+)*@[-!#-'*+\/-9=?^-~]+(?:\.[-!#-'*+\/-9=?^-~]+)+$")))))
(check-sat)
