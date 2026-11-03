; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<slot id=x tabindex=1 onfocus=alert(1)></slot>") (= x "<DIV STYLE=""background-image: url(javascript:alert('XSS'))"">") (= x "<% foo><x foo=""%><script>javascript:alert(1)</script>"">")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\s]{1,32}$") (re.comp ((_ re.from_regex ecma2020 u) "^(https:\/\/)?[a-zA-Z0-9-]*.myshopify.com\/?$"))))))
(check-sat)
