; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<blink id=x tabindex=1 ondeactivate=alert(1)></blink><input id=y autofocus>") (= x "<acronym onkeypre\u{1f600}ss=""alert(1)"" contenteditable>tes\u{1d400}t</acronym>") (= x "<img src=""javascript:document.vulnerable=true;"">")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[*+!.&#$|'\\%0-9a-z^_`{}=?~:-]+@([a-z0-9_-]+\.)+[A-Za-z]{2,}$") ((_ re.from_regex ecma2020 u) "^0[,.]?\d\d?\d?\d?\d?$")) (re.++ re.all (str.to_re "ym>")))))
(check-sat)
