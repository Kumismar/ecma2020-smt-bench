; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><var ondragover=alert(1) contenteditable>drop here</var>") (= x "<;STYLE>;@im\port';\ja\vasc\ript:alert("";XSS"";)';;<;/STYLE>;") (= x "<input type=""text"" value=`` <div/onmouseover='alert(1)'>X</div>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "year") (re.diff ((_ re.from_regex ecma2020) "^[0]*[1-9][0-9]{0,5}$") ((_ re.from_regex ecma2020) "^\d{7}|\d{10}$")))))
(check-sat)
