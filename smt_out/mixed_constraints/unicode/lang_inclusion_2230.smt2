; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^([\w.-]+)@(\[(\d{1,3}\.){3}|(?!live\.fr|mail\.ru|hotmail\.fr|arcor\.de|inbox\.ru|yams08|eric\.jones)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$") ((_ re.from_regex ecma2020 u) "(?:^([\w.-]+)@(\[(\d{1,3}\.){3}|(?!live\.fr|mail\.ru|hotmail\.fr|arcor\.de|inbox\.ru|yams08|eric\.jones)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$)|edit"))))
(check-sat)
