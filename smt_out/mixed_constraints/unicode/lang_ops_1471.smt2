; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<x o%6Exxx=1") (= x "<basefont onbeforecut=""alert(1)"" contenteditable>test</basefont>") (= x "<label onpaste=""alert(1)"" contenteditable>test</label>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$") (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{4}") (re.comp ((_ re.from_regex ecma2020 u) "^(?!.*gmail|.*outlook|.*yahoo|.*hotmail|.*lexter).*$"))))))
(check-sat)
