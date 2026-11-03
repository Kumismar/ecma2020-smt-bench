; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div id=""116""><div id=""x"">x</div>") (= x "<ins onmousemove=""alert(1)"">te\u{20000}st</ins>") (= x "<aside onmouseleave=""\u{10348}alert(1)"">test</aside>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[\u{5c}u2015\u{5c}u3000\u{5c}u30A1-\u{5c}u30F6\u{5c}u30FB-\u{5c}u30FE]+$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$")) (re.inter ((_ re.from_regex ecma2020 u) "^1([0-9]{10})$") (re.comp (re.++ (str.to_re "<") re.all)))))))
(check-sat)
