; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "[0-9a-zA-Z-\u{c1}\u{c0}\u{c2}\u{c4}\u{c9}\u{c8}\u{ca}\u{cb}\u{cd}\u{cc}\u{ce}\u{cf}\u{d3}\u{d2}\u{d4}\u{d6}\u{da}\u{d9}\u{db}\u{dc}\u{e1}\u{e0}\u{e2}\u{e4}\u{e9}\u{e8}\u{ea}\u{eb}\u{ed}\u{ec}\u{ee}\u{ef}\u{f3}\u{f2}\u{f4}\u{f6}\u{fa}\u{f9}\u{fb}\u{fc}\u{c7}'\u{e7},.\u{20ac}\u{a3}$_ \.]{2,100}$") ((_ re.from_regex ecma2020) ".*(?:[0-9a-zA-Z-\u{c1}\u{c0}\u{c2}\u{c4}\u{c9}\u{c8}\u{ca}\u{cb}\u{cd}\u{cc}\u{ce}\u{cf}\u{d3}\u{d2}\u{d4}\u{d6}\u{da}\u{d9}\u{db}\u{dc}\u{e1}\u{e0}\u{e2}\u{e4}\u{e9}\u{e8}\u{ea}\u{eb}\u{ed}\u{ec}\u{ee}\u{ef}\u{f3}\u{f2}\u{f4}\u{f6}\u{fa}\u{f9}\u{fb}\u{fc}\u{c7}'\u{e7},.\u{20ac}\u{a3}$_ \.]{2,100}$)")))
(check-sat)
