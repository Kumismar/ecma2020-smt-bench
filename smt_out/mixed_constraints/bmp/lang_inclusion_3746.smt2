; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^(?:[^()+^#|\u{a7}\u{192}!\u{d1}\u{d0}\u{be}{}))\u{b0}*$\u{b5}`\u{a3}E%\u{b4}`=?;_@/><\][\\\x22,;|]+)$") ((_ re.from_regex ecma2020) "[^()+^#|\u{a7}\u{192}!\u{d1}\u{d0}\u{be}{}))\u{b0}*$\u{b5}`\u{a3}E%\u{b4}`=?;_@/><\][\\\x22,;|]+")) ((_ re.from_regex ecma2020) "^(?:[^()+^#|\u{a7}\u{192}!\u{d1}\u{d0}\u{be}{}))\u{b0}*$\u{b5}`\u{a3}E%\u{b4}`=?;_@/><\][\\\x22,;|]+)$")))
(check-sat)
