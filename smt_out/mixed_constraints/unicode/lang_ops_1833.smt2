; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<iframe onkeydown=""alert(1)"" contenteditable>test</iframe>") (= x "<obj\u{20000}ect data=data:text/html;base64,PHN2Zy9vbmxvYWQ9YWxlcnQoMik+></object>") (= x "<img SRC=""javascript:document.vulnerable=tru\u{20000}e;""")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[\u{30a1}-\u{30f3}\u{30f4}\u{30fc}\u{ff0d}\-\u{ff10}-\u{ff19}0-9|\u{3000}| ]+$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^((\\+91-?)|0)?[0-9]{10}$") (re.comp ((_ re.from_regex ecma2020 u) "[0-9\+\-]{5,14}")))))))
(check-sat)
