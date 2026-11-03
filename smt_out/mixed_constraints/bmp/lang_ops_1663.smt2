; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<object type=""\u{10348}text/x-scriptlet"" dat\u{10348}a=""http://jsfiddle.net/XLE63/ ""></object>") (= x "<bdo onbeforecut=""alert(1)"" contenteditable>test</bdo>") (= x "<rt onmouseenter=""alert(1)"">test</rt>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[0-9a-zA-Z\s]*") (re.comp (re.union ((_ re.from_regex ecma2020) "^..*") (re.comp ((_ re.from_regex ecma2020) "(^\d{3}-\d{3}-\d{4}$|^\d{10}$)"))))))))
(check-sat)
