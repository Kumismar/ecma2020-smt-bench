; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;STYLE type="";text/css"";>;BODY{background:url("";javascript:alert(';XSS';)"";)}<;/STYLE>;") (= x "<span draggable=""true"" ondrag=""alert(1)"">test</span>") (= x "<div id=""109""><svg xmlns=""http://www.w3.org/2000/svg"">")))
(assert (not (str.in_re x (re.inter ((_ re.loop 50 56) re.allchar) (re.diff ((_ re.from_regex ecma2020 u) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u3041-\u{5c}u309F\u{5c}u30FC])[\u{5c}u3041-\u{5c}u309F\u{5c}u30FC\s]*"))))))
(check-sat)
