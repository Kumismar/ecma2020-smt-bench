; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<img onkeydown=""alert(1)"" contenteditable>test</img>") (= x "<figure onmouseleave=""alert(1)"">test</figure>") (= x "<;SCRIPT>;alert(String.fromCharCode(88,83,83))<;/SCRIPT>;")))
(assert (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020) "^^([1-zA-Z0-1@.\s]{1,255})$") (re.++ re.all (str.to_re ".f") re.all)) (re.inter ((_ re.from_regex ecma2020) "^\s*[^@]+([@]{1})[0-9a-zA-Z\._-]+([\.]{1})[0-9a-zA-Z\._-]+\s*$") ((_ re.from_regex ecma2020) "[\u{430}-\u{44f}\u{410}-\u{42f}a-zA-Z0-9_-]{3,255}")))))
(check-sat)
