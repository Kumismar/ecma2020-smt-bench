; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<label draggable=""true"" ondragstart=""alert(1)"">test</label>") (= x "<input onkeydown=""alert(1)"" contenteditable>test</input>") (= x "<command onmousemove=""alert(1)"">test</command>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^.*(?<!gmail\.com|yahoo\.com|me\.com|hotmail\.com|outlook\.com)$") ((_ re.from_regex ecma2020) "[0-9]{1,12}$")) ((_ re.loop 49 64) re.allchar))))
(check-sat)
