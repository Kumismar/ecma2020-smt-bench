; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<menuitem id=x tabindex=1 onfocus=alert(1)></menuitem>") (= x "<rb onbeforecopy=""alert(1)"" contenteditable>test</rb>") (= x "<div draggable=""true"" contenteditable>drag me</div><embed ondrop=alert(1) contenteditable>drop here</embed>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{1}.{6,}[a-zA-Z0-9]$") (re.inter ((_ re.from_regex ecma2020 u) "^(\d{4}[- ]){3}\d{2,4}|\d{14,16}$") ((_ re.from_regex ecma2020 u) "^(?!\s*$)[a-zA-Z\s]{1,60}$"))) (re.comp (re.++ re.all (str.to_re ">")))))))
(check-sat)
