; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<xmp onmouseup=""alert(1)"">test</xmp>") (= x "<div onbeforepaste=""alert(1)"" contenteditable>test</div>") (= x "<acronym id=x tabindex=1 onfocusin=alert(1)></acronym>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[-A-Za-z. ]{3,100}$") (re.inter ((_ re.from_regex ecma2020 u) "^[2-9][0-9]{9}$") ((_ re.from_regex ecma2020 u) "^[0-9]{9}")))))
(check-sat)
