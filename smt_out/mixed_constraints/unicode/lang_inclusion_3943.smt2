; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "nte|(?:^[A-Za-z0-9._'%+-]+@(\[(\d{1,3}\.){3}|(?!hotmail|gmail|yahoo|live|msn|outlook|comcast|verizon|aol|icloud|mail|ymail|att|GMAIL|YAHOO|HOTMAIL|AOL)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$)") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._'%+-]+@(\[(\d{1,3}\.){3}|(?!hotmail|gmail|yahoo|live|msn|outlook|comcast|verizon|aol|icloud|mail|ymail|att|GMAIL|YAHOO|HOTMAIL|AOL)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$"))))
(check-sat)
