; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" cont\u{10348}enteditable>dra\u{1f4a9}g me</div><rb ondragover=alert(1) contenteditable>drop here</rb>") (= x "<a onmouseover=alert(document.cookie)>xxs link</a>") (= x "<IFRAME SRC=""javascript:javascript:alert(1);""></IFRAME>")))
(assert (not (str.in_re x (re.inter (re.++ (str.to_re "<div") re.all) (re.comp (re.union ((_ re.from_regex ecma2020) "^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{e2}\u{20ac}\u{2122}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$")))))))
(check-sat)
