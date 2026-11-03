; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pre on\u{1f600}blu\u{20000}r=alert(1) tabindex=1 id=x></pre><input autofocus>") (= x "&lt;A HREF=\""javascript&#058;document&#46;location='http&#58;//www&#46;google&#46;com/'\""&gt;XSS&lt;/A&gt;") (= x "<image src=1 href=1 onerror=""javascript:alert(1)""></image>")))
(assert (not (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "^[0-9]{6,14}$") ((_ re.from_regex ecma2020) "^\+?[0-9 ]{9,20}")) ((_ re.from_regex ecma2020) "^(3[01]|[12][0-9]|0?[1-9])$"))))))
(check-sat)
