; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<element oncut=""alert(1)"" contenteditable>test</element>") (= x "&lt;IMG SRC=JaVaScRiPt:alert(&apos;XSS&apos;)&gt;") (= x "<em id=x tabindex=1 onfocus=alert(1)></em>")))
(assert (str.in_re x (re.union (re.inter (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{6,8}") (re.comp (re.++ re.all (str.to_re "/em>")))) (re.comp ((_ re.from_regex ecma2020) "^\s*\(?(020[1-9]{1}\)?[ ]?[1-9]{1}[0-9{2}[ ]?[0-9]{4})|(0[1-8]{1}[0-9]{3}\)?[ ]?[1-9]{1}[0-9]{2}[ ]?[0-9]{3})\s*$"))) ((_ re.from_regex ecma2020) "^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$"))))
(check-sat)
