; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "javascript:alert(""hellox worldss"")") (= x "<script>alert(document.getElementsByTagName('html')[0].innerHTML.match(/'([^']%2b)/)[1])</script>") (= x "<%<!--'%><script>alert(1);</script -->")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0-9\s)(-_]*") ((_ re.from_regex ecma2020 u) "[z0-9]+"))))
(check-sat)
