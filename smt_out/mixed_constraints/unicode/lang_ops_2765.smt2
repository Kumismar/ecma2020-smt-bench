; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<fieldset onkeypress=""alert(1)"" contenteditable>test</fieldset>") (= x "<IMG SRC=\u{201d}javascript:alert(\u{2018}XSS\u{2019});\u{201d}>") (= x "<option onkeydown=""alert(1)"" contenteditable>test</option>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[\w\s-]{0,16}") ((_ re.from_regex ecma2020 u) "^\d{8,10}$"))))
(check-sat)
