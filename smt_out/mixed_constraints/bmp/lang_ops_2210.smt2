; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<audio ondblclick=""alert(1)"">test</audio>") (= x "<body onbeforecopy=""alert(1)"" contenteditable>test</body>") (= x "<style>@keyfram\u{20000}es x{}<\u{1f600}/style><acronym style=""animation-name:x"" onanimationend=""alert(1)""></acronym>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}") (re.++ (str.to_re "<aud") re.all)) (re.comp ((_ re.from_regex ecma2020) "^[0-9]{3,}"))))))
(check-sat)
