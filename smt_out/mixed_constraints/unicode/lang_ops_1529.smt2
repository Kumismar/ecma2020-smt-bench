; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<marquee onbeforecut=""alert(1)"" contenteditable>test</marquee>") (= x "<svg><template onload=alert(1)></template>") (= x "<div draggable=""true"" contenteditable>drag me</div><audio ondrop=alert(1) contenteditable>drop here</audio>")))
(assert (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020 u) "^\+[0-9]?()[0-9](\s|\S)(\d[0-9]{9})$") (re.comp (re.++ re.all (str.to_re ">") re.all))) ((_ re.from_regex ecma2020 u) "^[\u{e4}\u{f6}\u{fc}\u{df}a-zA-Z\s]{2,40}$"))))
(check-sat)
