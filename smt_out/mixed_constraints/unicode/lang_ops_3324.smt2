; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div onmouseleave=""alert(1)"">test</div>") (= x "<code onmousemove=""alert(1)"">test</code>") (= x "<strong onkeypress=""alert(1)"" contenteditable>test</strong>")))
(assert (str.in_re x (re.comp (re.union (re.++ (str.to_re "<st") re.all) (re.inter ((_ re.from_regex ecma2020 u) "\d\d-\d\d-\d\d\d\d") ((_ re.from_regex ecma2020 u) "([A-Za-z0-9]([+'._-])?)+[A-Za-z0-9](['+'._-])?@([A-Za-z0-9])+(\.)+((?!.*con)(?!.*ney)[A-Za-z0-9])+(\.[A-Za-z0-9]{2,3})?"))))))
(check-sat)
