; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<plaintext id=x tabindex=1 onfocusin=alert(1)></plaintext>") (= x "<small id=x tabindex=1 onbeforeactivate=alert(1)></small>") (= x "&#X03c;")))
(assert (not (str.in_re x (re.inter (re.diff (re.++ re.all (str.to_re ";")) ((_ re.from_regex ecma2020 u) "^[A-\u{17e}- ()]{2,}$")) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^\w{5}$") ((_ re.from_regex ecma2020 u) "^[1-9][0-9]{3} ?(?!sa|sd|ss|SA|SD|SS)[A-Za-z]{2}$")))))))
(check-sat)
