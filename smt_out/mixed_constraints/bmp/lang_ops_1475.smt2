; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""javas\x04cript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<del onmouseup=""alert(1)"">test</del>") (= x "<rb id=x tabindex=1 onfocusin=alert(1)></rb>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020) "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$") (re.diff ((_ re.from_regex ecma2020) "^(\+4219\d{8,})") ((_ re.from_regex ecma2020) "[a-z.]*"))))))
(check-sat)
