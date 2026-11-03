; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<kbd onmouseout=""alert(1)"">test</kbd>") (= x "<em oncontextmenu=""alert(1)"">test</em>") (= x "<ruby onbeforecut=""alert(1)"" c\u{1d400}ontenteditable>t\u{1f4a9}est</ruby>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?!.*(\.ru|\.site|28dtdbnfomen\.com|19mdgszxomen\.com|cannabis7oil\.com)).*$") (re.inter (re.++ (str.to_re "<kb") re.all) (re.comp ((_ re.from_regex ecma2020) "^\d{4}\d{3}\d{4}$")))))))
(check-sat)
