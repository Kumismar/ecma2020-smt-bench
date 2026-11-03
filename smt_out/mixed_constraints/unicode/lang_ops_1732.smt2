; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<article onbeforecut=""alert(1)"" contenteditable>test</article>") (= x "<marquee draggable=""true"" ondragend=""alert(1)"">test</marquee>") (= x "<fieldset onfocusout=alert(1) tabindex=1 id=x></fieldset><input autofocus>")))
(assert (not (str.in_re x (re.comp (re.inter (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z]+\.[A-Za-z]{2,3}$") ((_ re.from_regex ecma2020 u) "^((?!abuse|info|admin|billing).)*$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{f1}\u{d1} _]*[A-Za-z0-9\u{f1}\u{d1}][A-Za-z0-9\u{f1}\u{d1} _]*$") (re.++ re.all (str.to_re "t") re.all)))))))
(check-sat)
