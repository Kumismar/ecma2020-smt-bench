; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e1}\u{e0}\u{e2}\u{e3}\u{e9}\u{e8}\u{ea}\u{ed}\u{ef}\u{f3}\u{f4}\u{f5}\u{f6}\u{fa}\u{e7}\u{f1}\u{c1}\u{c0}\u{c2}\u{c3}\u{c9}\u{c8}\u{cd}\u{cf}\u{d3}\u{d4}\u{d5}\u{d6}\u{da}\u{c7}0-9\s]+$") ((_ re.from_regex ecma2020) "[\u{6f0}\u{661}\u{662}\u{663}\u{6f4}\u{6f5}\u{6f6}\u{6f7}\u{6f8}\u{6f9}]{9}")) (re.comp ((_ re.from_regex ecma2020) "[\u{6f0}\u{661}\u{662}\u{663}\u{6f4}\u{6f5}\u{6f6}\u{6f7}\u{6f8}\u{6f9}]{9}"))) (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e1}\u{e0}\u{e2}\u{e3}\u{e9}\u{e8}\u{ea}\u{ed}\u{ef}\u{f3}\u{f4}\u{f5}\u{f6}\u{fa}\u{e7}\u{f1}\u{c1}\u{c0}\u{c2}\u{c3}\u{c9}\u{c8}\u{cd}\u{cf}\u{d3}\u{d4}\u{d5}\u{d6}\u{da}\u{c7}0-9\s]+$") ((_ re.from_regex ecma2020) "[\u{6f0}\u{661}\u{662}\u{663}\u{6f4}\u{6f5}\u{6f6}\u{6f7}\u{6f8}\u{6f9}]{9}"))))
(check-sat)
