; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<strike onblur=alert(1) tabindex=1 id=x></strike><input autofocus>") (= x "<foreignObject xlink:href=""data:text/xml,%3Cscript xmlns='http://www.w3.org/1999/xhtml'%3Ealert(88)%3C/script%3E""/>") (= x "<tr id=x tabindex=1 onbeforeactivate=alert(1)></tr>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}|[0-9]{2}[0-9]{3}[0-9]{3}[0-9]{4}[0-9]{2}$") ((_ re.from_regex ecma2020 u) "^(\s)*([0-9]{3})(\s)*([0-9])(\s)*([0-9])(\s)*([0-9]{2})(\s)*([0-9]{1})(\s)*([0-9]{3})(\s)*$")))))
(check-sat)
