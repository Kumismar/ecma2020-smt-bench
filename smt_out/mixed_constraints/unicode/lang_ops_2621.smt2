; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input type=image onloadend=alert(1) src=validimage.png>") (= x "<select oncopy=""alert(1)"" contenteditable>test</select>") (= x "<base h\u{1f600}ref=//0>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,4}$") ((_ re.loop 48 66) re.allchar)) (re.inter ((_ re.from_regex ecma2020 u) "^(\+?1?( ?.?-?\(?\d{3}\)?) ?.?-?)?(\d{3})( ?.?-? ?\d{4})$") (re.comp ((_ re.from_regex ecma2020 u) "^([0-9]){7,8}$"))))))
(check-sat)
