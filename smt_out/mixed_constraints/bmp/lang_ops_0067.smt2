; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><progress onload=alert(1)></progress>") (= x "&lt;META HTTP-EQUIV=\""Set-Cookie\"" Content=\""USERID=&lt;SC\u{10348}RIPT&gt;alert('XSS')\u{1f600}&lt;/SCRIPT&gt;\""&gt;") (= x "<img src\x10=x onerror=""javascript:alert(1)"">")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "Penticton|Kelowna|Vernon|West Kelowna|Armstrong|Coldstream|Enderby|Lake Country|Lumby|Oliver|Osoyoos|Peachland|Spallumcheen|Summerland|") (re.inter ((_ re.from_regex ecma2020) "^(([\w\x21\x23\x24\x25\x26\x27\x2a\x2b\x2d\x2f\x3d\x3f\x5e\x5f\x60\x7b\x7c\x7d\x7e]+[\w\x21\x23\x24\x25\x26\x27\x2a\x2b\x2d\x2f\x3d\x3f\x5e\x5f\x60\x7b\x7c\x7d\x7e\x2e]*[\w\x21\x23\x24\x25\x26\x27\x2a\x2b\x2d\x2f\x3d\x3f\x5e\x5f\x60\x7b\x7c\x7d\x7e]*)|([\x22][\w\x21\x23\x24\x25\x26\x27\x2a\x2b\x2d\x2f\x3d\x3f\x5e\x5f\x60\x7b\x7c\x7d\x7e\x28\x29\x2c\x3a\x3b\x3c\x3e\x40\x5b\x5d\x5c\x20\x2e]+[\x22]))@[\w_\x2D.]*[\w]+\.[A-Za-z]{2,}$") ((_ re.from_regex ecma2020) "^(\d{1})$"))))))
(check-sat)
