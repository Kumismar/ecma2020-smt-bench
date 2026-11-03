; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<h1 draggable=""true"" ondragleave=""alert(1)"">test</h1>") (= x "<abbr oncopy=""alert(1)"" contenteditable>test</abbr>") (= x "<listing onmouseup=""alert(1)"">test</listing>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\d{5}([\-]?\d{4})?$") (re.union ((_ re.from_regex ecma2020) ".*[!#-9A-~]+@+[a-z0-9]+.+[^.]$.*") (re.comp (re.++ (str.to_re "<abb") re.all))))))
(check-sat)
