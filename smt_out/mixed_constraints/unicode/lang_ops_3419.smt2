; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed src=1 onerror=alert(1) type=image/gif>") (= x "<slot id=x tabindex=1 onactivate=alert(1)></slot>") (= x "<svg><script x:href='https://dl.dropbox.com/u/13018058/js.js' {Opera}")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z-0-9]+$") (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{1}\d{7}[a-zA-Z0-9]{1}|\d{8}[a-zA-Z0-9]$") ((_ re.from_regex ecma2020 u) "[0-9]{1,2}[,.]{0,1}[0-9]{0,2}")))))
(check-sat)
