; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<select onmouseup=""alert(1)"">test</select>") (= x "<dialog onblur=alert(1) tabindex=1 id=x></dialog><input autofocus>") (= x "<!--\x3E<img src=xxx:x onerror=javascript:alert(1)> -->")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)\b") (re.++ re.all (str.to_re ">"))) (re.comp ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}s]+$")))))
(check-sat)
