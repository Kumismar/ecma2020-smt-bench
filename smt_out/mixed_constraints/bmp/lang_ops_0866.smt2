; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<rtc id=x tabindex=1 onactivate=alert(1)></rtc>") (= x "<frame id=x tabindex=1 onbeforeactivate=alert(1)></frame>") (= x "<isindex onmousemove=""alert(1)"">test</isindex>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$") (re.inter ((_ re.from_regex ecma2020) "\w{5}") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\s]*$"))))))
(check-sat)
