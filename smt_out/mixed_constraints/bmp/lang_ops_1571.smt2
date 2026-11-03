; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&#X3c") (= x "<xmp onbeforecut=""alert(1)"" contenteditable>test</xmp>") (= x "<table><TD BACKGROUND=""javascript:document.vulnerable=true;"">")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) ".{3,22}") ((_ re.from_regex ecma2020) "^AX\d{3,7}$")) ((_ re.from_regex ecma2020) "^#[a-fA-F0-9]{6}|#[a-fA-F0-9]{3}|rgb *\( *[0-9]{1,3}%? *, *[0-9]{1,3}%? *, *[0-9]{1,3}%? *\)|rgba *\( *[0-9]{1,3}%? *, *[0-9]{1,3}%? *, *[0-9]{1,3}%? *, *[0-9]{1,3}%? *\)|black|green|silver|gray|olive|white|yellow|maroon|navy|red|blue|purple|teal|fuchsia|aqua|url\(#[^\)]+\)$"))))
(check-sat)
