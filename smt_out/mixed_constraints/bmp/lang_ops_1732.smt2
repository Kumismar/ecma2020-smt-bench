; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<iframe src=http://xss.rocks/scriptlet.html <") (= x "<// style=x:expre\u{1f600}ssion\28javascript:alert(1)\29>") (= x "<noembed onkeypress=""alert(1)"" contenteditable>test</noembed>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\s*\S+.*") (re.inter ((_ re.from_regex ecma2020) "^[A-z0-9._-]+@[A-z0-9._-]+\.[A-z]{2,4}$") (re.inter ((_ re.from_regex ecma2020) "^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}[0-9]{9}[0-9]{9}$|18[0-9]{9}$") ((_ re.loop 55 67) re.allchar))))))
(check-sat)
