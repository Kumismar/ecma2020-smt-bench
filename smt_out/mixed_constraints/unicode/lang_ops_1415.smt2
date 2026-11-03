; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<mark onbeforepaste=""ale\u{10348}rt(1)"" contenteditable>test</mark>") (= x "&lt;A HREF=&quot;h&#x0A;tt&#09;p://6&amp;#09;6.000146.0x7.147/&quot;&gt;XSS&lt;/A&gt;") (= x "<div draggable=""true"" contenteditable>drag me</div><marquee ondrop=alert(1) contenteditable>drop here</marquee>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{435}\u{401}a-zA-Z]+$") (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{5c}u00C0-\u{5c}u00FF\s\.]{2,}") ((_ re.from_regex ecma2020 u) "^[A-Z\u{c4}\u{d6}\u{dc}]{1}[a-z\u{e4}\u{f6}\u{fc}]{1,20}"))))))
(check-sat)
