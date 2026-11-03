; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&lt;META HTTP-EQUIV=\""Set-Cookie\"" Content=\""USERID=&lt;SC\u{10348}RIPT&gt;alert('XSS')\u{1f600}&lt;/SCRIPT&gt;\""&gt;") (= x "<% foo><x foo=""%><script>javascript:alert(1)</script>"">") (= x "<strong onmouseup=""alert(1)"">test</strong>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\x22(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*\x22)@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])\p{L}$") (re.comp ((_ re.from_regex ecma2020 u) "^[_A-z0-9]{2,2}[\-]{1,1}[_A-z0-9]{3,3}$"))))))
(check-sat)
