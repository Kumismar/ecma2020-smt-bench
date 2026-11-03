; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<img SRC=""jav ascript:document.vulnerable=true;"">") (= x "<style>:target {color: red;}</style><bgsound id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></bgsound>") (= x "<noembed \u{1d400}onmouseleave=""alert(1)"">test</noembed>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^LG\d{3,7}|AI\d{3,7}$") ((_ re.from_regex ecma2020) "\b\w+\b$"))))))
(check-sat)
