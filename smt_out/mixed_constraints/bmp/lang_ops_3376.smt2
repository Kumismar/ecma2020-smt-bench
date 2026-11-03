; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><basefont ondragover=alert(1) contenteditable>drop here</basefont>") (= x "<div id=""126""><object id=""x"" classid=""clsid:CB927D12-4FF7-4a9e-A169-56E4B8A75598""></object>") (= x "<script charset=""\x22>javascript:\u{1d400}alert(1)</scri\u{1f4a9}pt>")))
(assert (str.in_re x (re.comp (re.union (re.++ re.all (str.to_re "font>")) (re.comp (re.inter ((_ re.from_regex ecma2020) "\d\d-\d\d-\d\d\d\d") (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z0-9]{0,50}$"))))))))
(check-sat)
