; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><figcaption ondragover=alert(1) contenteditable>drop here</figcaption>") (= x "<math><a xlink:href=""//jsfiddle\u{1f600}.net/t846h/"">click") (= x "</h\u{1f600}tml>//[""\u{10348}'`-->]]>]</div>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "\([0-9]{2}\) [0-9]{4,6}-[0-9]{3,5}$") (re.++ (str.to_re "</h") re.all)) (re.union ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}\s\-\.]{1,40}") ((_ re.from_regex ecma2020 u) "^.+@((?!gmail)(?!yahoo)(?!outlook)(?!icloud)(?!email)(?!qq)(?!aol)(?!hotmail).)+\..+$"))))))
(check-sat)
