; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<data onmousemove=""alert(1)"">test</data>") (= x "<a draggable=""true"" ondragleave=""alert(1)"">test</a>") (= x "<svg><script x:href='https://dl.dropbox.com/u/13018058/js.js' {Opera}")))
(assert (str.in_re x (re.comp (re.diff (re.union (re.++ re.all (str.to_re "pb") re.all) (re.comp ((_ re.from_regex ecma2020) "^.{0,1}$"))) (re.inter ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57]|19[0-9]|16[0-9])[0-9]{8}$") ((_ re.from_regex ecma2020) "[\d]{5}(-[\d]{4})?"))))))
(check-sat)
