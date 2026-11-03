; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<abbr onbeforepaste=""alert(1)"" contenteditable>test</abbr>") (= x "<strike onfocusout=alert(1) tabindex=\u{10348}1 id=x></strike><input autofocus>") (= x "<meta content=""&NewLine; 1 &NewLine;; JAVASCRIPT&colon; alert(1)"" http-equiv=""refresh""/>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[0-9]{16}") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z ]*$") ((_ re.from_regex ecma2020 u) "^(\([0-9]{2}\) ([0-9]{4}|[0-9]{5})-[0-9]{4})$"))))))
(check-sat)
