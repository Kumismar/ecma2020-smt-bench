; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<abbr onbeforecut=""alert(1)"" contenteditable>test</abbr>") (= x "<video id=x tabindex=1 onbeforeactivate=alert(1)></video>") (= x "<bgsound onbeforecut=""alert(1)"" contenteditable>test</bgsound>")))
(assert (not (str.in_re x (re.comp (re.diff (re.inter ((_ re.from_regex ecma2020) "^(\w+[-.+&%])*\w+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$") ((_ re.loop 47 56) re.allchar)) (re.comp ((_ re.from_regex ecma2020) "^.+@.+\.[a-zA-Z]{2,63}$")))))))
(check-sat)
