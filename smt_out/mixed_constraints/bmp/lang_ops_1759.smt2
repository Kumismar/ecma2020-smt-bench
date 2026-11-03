; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<var id=x tabindex=1 onfocus=alert(1)></var>") (= x "<marquee draggable=""true"" ondragstart=""alert(1)"">test</marquee>") (= x "`""'><img src=x\u{10348}xx:x onerror\x09=javascript:alert(1)>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "\d|1\d|2[0-3]|0\d") (re.diff (re.++ re.all (str.to_re "t(1)><") re.all) ((_ re.from_regex ecma2020) "^1([358][0-9]|4[579]|66|7[0135678]|9[89])\d{8}$"))))))
(check-sat)
