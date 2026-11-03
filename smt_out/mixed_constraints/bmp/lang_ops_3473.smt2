; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<rt onbeforecut=""alert(1)"" contenteditable>test</rt>") (= x "<svg onResize svg onResize=""javascript:javascript:alert(1)""></svg onResize>") (= x "<script>~'\u{5c}u0061' ;  \u{5c}u0074\u{5c}u0068\u{5c}u0072\u{5c}u006F\u{5c}u0077 ~ \u{5c}u0074\u{5c}u0068\u{5c}u0069\u{5c}u0073.  \u{5c}u0061\u{5c}u006C\u{5c}u0065\u{5c}u0072\u{5c}u0074(~'\u{5c}u0061')</script U+")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-z]{2,}$") (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][\sa-zA-Z]*") ((_ re.from_regex ecma2020) "^[a-zA-Z \-'_]+$"))))))
(check-sat)
