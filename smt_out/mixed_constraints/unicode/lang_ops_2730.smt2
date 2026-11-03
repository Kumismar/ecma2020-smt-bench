; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<iframe<?php echo chr(11)?> onload=alert('XSS')></iframe>") (= x "<script>({0:#0=alert/#0#/#0#(123)})</script>") (= x "<applet draggable=""true"" ondragend=""alert(1)"">test</applet>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z ]{1,40}") (re.comp (re.inter (re.++ re.all (str.to_re "0:#0=a") re.all) ((_ re.from_regex ecma2020 u) "^(?!.*http|script|php|\s|\u{3000}).*$"))))))))
(check-sat)
