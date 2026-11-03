; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<\u{10348}vid\u{1f4a9}eo autoplay onplay=alert(1)><source src=""validvideo.mp4"" type=""video/mp4""></video>") (= x "<img\x32src=x onerror=""javascript:alert(1)"">") (= x "<label onmouseleave=""alert(1)"">test</label>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) ".{55,}") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e5}\u{e7}\u{e8}\u{e9}\u{ea}\u{eb}\u{ec}\u{ed}\u{ee}\u{ef}\u{f0}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f9}\u{fa}\u{fb}\u{fc}\u{fd}\u{ff}\-'&]{4,}$"))))
(check-sat)
