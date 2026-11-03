; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<textarea onkeyup=""alert(1)"" contenteditable>test</textarea>") (= x "<style>@keyframes x{}</style><script style=""animation-name:x"" onanimationstart=""alert(1)""></script>") (= x "<div draggable=""true"" contenteditable>drag me</div><img ondrop=alert(1) contenteditable>drop here</img>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\.0-9]+$") (re.comp ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z\s]+$"))))))
(check-sat)
