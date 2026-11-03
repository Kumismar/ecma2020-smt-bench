; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<figcaption oncut=""alert(1)"" contenteditable>test</figcaption>") (= x "<;IMG SRC="";jav&;#x0A;ascript:alert(';XSS';);"";>;") (= x "<SCRIPT onreadystatechange=javascript:javascript:alert(1);></SCRIPT>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,9}$") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_\.\s]{1,40}$")) ((_ re.from_regex ecma2020) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[A-z\u{c0}-\u{ff}0-9]+([\-\.]{1,2}[A-z\u{c0}-\u{ff}0-9]+)*\.[a-z]{2,20}(:[0-9]{1,5})?(\/.*)?$")))))
(check-sat)
