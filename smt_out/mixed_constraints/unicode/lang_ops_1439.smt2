; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input onkeypress=""alert(1)"" contenteditable>test</input>") (= x "<article draggable=""true"" ondrag=""alert(1)"">test</article>") (= x "<HEAD><META HTTP-EQUIV=""CONTENT-TYPE"" CONTENT=""text/html; charset=UTF-7""> </HEAD>+ADw-SCRIPT+AD4-alert('XSS');+ADw-/SCRIPT+AD4-")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^([\+]\d{11,13})$") (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e5}\u{e7}\u{e8}\u{e9}\u{ea}\u{eb}\u{ec}\u{ed}\u{ee}\u{ef}\u{f0}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f9}\u{fa}\u{fb}\u{fc}\u{fd}\u{ff}\-'&]{4,}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z \-\.]{0,14}$")))) (re.++ re.all (str.to_re "D4-")))))
(check-sat)
