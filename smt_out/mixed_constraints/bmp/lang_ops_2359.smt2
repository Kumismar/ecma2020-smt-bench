; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<form id=x tabindex=1\u{1f600} onbeforedeactivate=alert(1)></form><input autofocus>") (= x "<var oncopy=""alert(1)"" contenteditable>test</var>") (= x "<title id=x tabindex=1 onfocusin=alert(1)></title>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "^\(?(?!1|800|833|844|855|866|877|888)\d{3}\)?(-?|\s?)\d{3}(-|\s|\s-\s)?\d{4}$") (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z,]*") ((_ re.from_regex ecma2020) "http(s?)://.+"))))))
(check-sat)
