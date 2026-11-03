; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """><img src=x onerror=javascript:alert((A))>") (= x "<ins draggable=""true"" ondragstart=""alert(1)"">test</ins>") (= x "<datalist onkeypress=""alert(1)"" contenteditable>test</datalist>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020 u) "^[ ]*[^""""<>]{0,50}[ ]*$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{1,9}$")) ((_ re.from_regex ecma2020 u) "[0-9-A-Z-a-z]{2,2}"))))
(check-sat)
