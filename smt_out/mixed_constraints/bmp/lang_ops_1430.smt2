; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><ul id=x style=""transition:color 1s"" ontransitionend=alert(1)></ul>") (= x "<sub onkeypress=""al\u{10348}ert(1)"" contenteditable>test\u{1f4a9}</sub>") (= x "<shadow id=x tabindex=1 ondeactivate=alert(1)></shadow><input id=y autofocus>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "[A-Za-z-\s]+$") (re.inter (re.++ (str.to_re "<s") re.all) (re.union ((_ re.from_regex ecma2020) "^[+-]?[\d\.]*$") (re.comp ((_ re.from_regex ecma2020) "^(0[1-68][-.\s]?(\d{2}[-.\s]?){3}\d{2})$")))))))
(check-sat)
