; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "[0-9\-\/]*") (re.union ((_ re.from_regex ecma2020) "[0-9\-\/]*") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\u{c3}\u{2013}\u{c3}\u{b6}\u{c3}\u{bc}\u{c3}\u{153}\u{c3}\u{201e}\u{c3}\u{a4}\u{c3}\u{178}\s\-]*)$"))) (re.union ((_ re.from_regex ecma2020) "[0-9\-\/]*") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\u{c3}\u{2013}\u{c3}\u{b6}\u{c3}\u{bc}\u{c3}\u{153}\u{c3}\u{201e}\u{c3}\u{a4}\u{c3}\u{178}\s\-]*)$")))))
(check-sat)
