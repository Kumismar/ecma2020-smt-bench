; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed src=""http://corkami.googlecode.com/svn/!svn/bc/480/trunk/misc/pdf/helloworld_js_X.pdf"">") (= x "<noembed id=x tabindex=1 onbeforeactivate=alert(1)></noembed>") (= x "<big onbeforecut=""alert(1)"" contenteditable>test</big>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-z0-9._\+\-]+@[a-z0-9.\-]{2,}[.][a-z]{2,3}$") (re.comp ((_ re.from_regex ecma2020 u) "^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$")))))
(check-sat)
