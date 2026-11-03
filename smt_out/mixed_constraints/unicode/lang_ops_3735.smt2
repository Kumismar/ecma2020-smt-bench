; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script src=%(jscript)s></script>") (= x "<IMG SRC=""javascript:javascript:alert(1)""") (= x "<video src=1 onerror=alert(1)>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^(?:[0-9]??).{9,14}[0-9]$") ((_ re.from_regex ecma2020 u) "^[-a-zA-Z0-9 .]+$")) (re.comp ((_ re.from_regex ecma2020 u) "^[\w\W]{6,20}$"))))))
(check-sat)
