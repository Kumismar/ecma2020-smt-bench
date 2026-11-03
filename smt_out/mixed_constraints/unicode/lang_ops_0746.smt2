; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<strike id=x tabindex=1 onbeforeactivate=alert(1)></strike>") (= x "<div draggable=""true"" contenteditable>drag me</div><map ondrop=alert(1) contenteditable>drop here</map>") (= x "<header onmouseout=""alert(1)"">test</header>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{8}$|^[0-9]{10}$") (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[\d]+[0-9]{0,3}(\.?[0-9]{3})*(,[0-9]{1,2})?$") (re.comp (re.++ re.all (str.to_re "</str") re.all)))))))
(check-sat)
