; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<textarea draggable=""true"" ondragstart=""alert(1)"">test</textarea>") (= x "<dir draggable=""true"" ondragenter=""alert(1)"">test</dir>") (= x "<canvas onmouseover=""alert(1)"">test</canvas>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-z ]*$") (re.inter ((_ re.from_regex ecma2020) "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$") ((_ re.from_regex ecma2020) "[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}$"))))))
(check-sat)
