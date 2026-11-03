; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<video src=1 href=1 onerror=""javascript:alert(1)""></video>") (= x "<audio oncontextmenu=""alert(1)"">test</audio>") (= x "<frame draggable=""true"" ondragstart=""alert(1)"">test</frame>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(http:\/\/|https:\/\/|)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$") (re.comp ((_ re.from_regex ecma2020) "^(\d{3}-?\d{3}-?\d{4}|XXX-XXX-XXXX)$")))))))
(check-sat)
