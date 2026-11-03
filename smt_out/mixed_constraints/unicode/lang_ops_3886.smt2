; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=""jav&#x09;ascript:alert('XSS');"">") (= x "<iframe/onreadystatechange=\u{5c}u0061\u{5c}u006C\u{5c}u0065\u{5c}u0072\u{5c}u0074('\u{5c}u0061') worksinIE>") (= x "<! '=""foo""><x foo='><img src=x onerror=alert(2)//'>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[-_+a-z0-9-A-Z]+(\.[-_+a-z0-9-A-Z]+)*@[a-z0-9-A-Z]+(\.[A-Z-a-z0-9-]+)*(\.[a-z-A-Z]{2,24})$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]{2,})+$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s]+"))))))
(check-sat)
