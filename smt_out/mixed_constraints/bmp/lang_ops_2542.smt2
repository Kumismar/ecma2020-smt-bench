; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><canvas ondrop=alert(1) contenteditable>drop here</canvas>") (= x "<textarea onauxclick=alert(1)>XSS</textarea>") (= x "<xmp onmouseup=""alert(1)"">test</xmp>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\+(\d{1}\s?){8,20}$") (re.comp (re.union ((_ re.from_regex ecma2020) "^\s*(\S+\s+){0,4}\S*$") (re.comp (re.diff ((_ re.from_regex ecma2020) "^(7)$") (re.++ re.all (str.to_re "onte") re.all))))))))
(check-sat)
