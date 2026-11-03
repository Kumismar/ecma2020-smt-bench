; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed src=1 onerror=alert(1) type=image/gif>") (= x "&lt;IFRAME SRC=http://ha.ckers.org/scriptlet.html &lt;") (= x "\u{1f4a9}\u{5c}u003c")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(\w).{4,32}$") ((_ re.from_regex ecma2020 u) "^0([1-7]|9)$"))))))
(check-sat)
