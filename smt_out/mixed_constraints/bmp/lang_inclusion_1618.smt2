; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]+[\s]{1,}/?[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]*") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,50}[A-Za-z0-9-/ .]{2,80}")) ((_ re.from_regex ecma2020) "[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]+[\s]{1,}/?[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]*")) (re.diff ((_ re.from_regex ecma2020) "[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]+[\s]{1,}/?[\w\u{e0}-\u{fa}\u{c0}-\u{da} ]*") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,50}[A-Za-z0-9-/ .]{2,80}"))))
(check-sat)
