; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<input autofocus onfocusin=a\u{10348}lert(1)>") (= x "<div id=""63""><embed src=""javascript:alert(63)""></embed> // O10.10\u{2193}, OM10.0\u{2193}, GC6\u{2193}, FF") (= x "<tfoot onfocusout=alert(1) tabindex=1 id=x></tfoot><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z]([a-zA-Z0-9\-]){1,}[a-zA-Z0-9]$") ((_ re.from_regex ecma2020 u) "^\d{5}(?:[-\s]\d{4})?$")))))
(check-sat)
