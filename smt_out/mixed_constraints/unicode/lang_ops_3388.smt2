; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<menuitem onbeforecopy=""alert(1)"" contenteditable>test</menuitem>") (= x "<ins onbeforepaste=""alert(1)"" contenteditable>test</ins>") (= x "<q onkeydown=""alert(1)"" contenteditable>test</q>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^1\d{10}$|^(0\d{2,3}-?|\(0\d{2,3}\))?[1-9]\d{4,7}(-\d{1,8})?$") (re.inter ((_ re.from_regex ecma2020 u) "^0[0-9]{1}[\.\/_-]?[0-9]{2}[\.\/_-]?[0-9]{2}[\.\/_-]?[0-9]{2}[\.\/_-]?[0-9]{2}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9\.\-]+"))))))
(check-sat)
