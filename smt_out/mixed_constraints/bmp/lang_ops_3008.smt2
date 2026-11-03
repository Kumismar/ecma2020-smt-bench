; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<select onpaste=""alert(1)"" contenteditable>test</select>") (= x "<svg><dat\u{1f4a9}alist onload=alert(1)></datalist>") (= x "<script\x2Ftype=""text/javascript"">javascript:alert(1\u{1f600});</scri\u{1f600}pt>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[+]?[0-9-\s()]*$") ((_ re.from_regex ecma2020) "(?=^.{8,}$)((?=.*\\d)|(?=.*\\W+))(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$")))))
(check-sat)
