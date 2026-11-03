; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<map onkeypress=""alert(1)"" contenteditable>test</map>") (= x "<multicol id=x tabindex=1 onfocusin=alert(1)></multicol>") (= x "<listing onbeforecut=""alert(1)"" contenteditable>test</listing>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]{2,}.[a-zA-Z0-9]{2,}$") (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[+]?(\d{1,2})?[\s.-]?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z,*\s]{1,50}$"))))))
(check-sat)
