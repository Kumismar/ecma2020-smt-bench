; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<code draggable=""true"" ondrag=""alert(1)"">test</code>") (= x "&lt;OBJECT classid=clsid&#58;ae24fdae-03c6-11d1-8b76-0080c744f389&gt;&lt;param name=url value=javascript&#058;alert('XSS')&gt;&lt;/OBJECT&gt;") (= x "<img src=javascript:alert(&quot;XSS&quot;)>")))
(assert (str.in_re x (re.comp (re.inter (re.union ((_ re.from_regex ecma2020) "^\+[0-9\s]{6,20}$") ((_ re.from_regex ecma2020) "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*\(?([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\)?\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$")) ((_ re.from_regex ecma2020) "^[a-z A-z]+$")))))
(check-sat)
