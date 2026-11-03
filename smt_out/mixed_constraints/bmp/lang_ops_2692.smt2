; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;LINK REL="";stylesheet""; HREF="";javascript:alert(';XSS';);"";>;") (= x "<frameset id=x tabindex=1\u{1f4a9} on\u{1f600}focusin=alert(1)></frameset>") (= x "<style>:target {transform: rotate(180deg);}</style><hgroup id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></hgroup>")))
(assert (not (str.in_re x (re.union ((_ re.loop 124 132) re.allchar) (re.union (re.inter ((_ re.from_regex ecma2020) "^[0-3]{1}[0-9]{1}/[0-1]{1}[0-9]{1}/[0-9]{4}$") (re.comp ((_ re.from_regex ecma2020) "^[0-9a-zA-Z-_.@]+$"))) ((_ re.from_regex ecma2020) "^((\\+91-?)|0)?[0-9]{10}$"))))))
(check-sat)
