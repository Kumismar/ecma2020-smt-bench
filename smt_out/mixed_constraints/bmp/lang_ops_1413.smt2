; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<basefont id=x tabindex=\u{1f4a9}1 onbeforedea\u{20000}ctivate=alert(1)></basefont><input autofocus>") (= x "<details id=x tabindex=1 onfocus=alert(1)></details>") (= x "<main draggable=""true"" ondragstart=""alert(1)"">test</main>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^Yb2cR3d7hm$") (re.comp ((_ re.loop 51 55) re.allchar))) ((_ re.from_regex ecma2020) "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Za-z]{2}|com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum)\b"))))
(check-sat)
