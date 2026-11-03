; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onerror=""alert(String.fromCharCode(88,83,83))"">") (= x "<p draggable=""true"" ondragend=""alert(1)"">test</p>") (= x "\u{201c}><s\u{201d}%2b\u{201d}cript>alert(document.cookie)</script>")))
(assert (str.in_re x (re.diff ((_ re.loop 38 55) re.allchar) (re.union ((_ re.from_regex ecma2020 u) "^(?!\s*$).+") ((_ re.from_regex ecma2020 u) "[0-9\.]{3,8}")))))
(check-sat)
