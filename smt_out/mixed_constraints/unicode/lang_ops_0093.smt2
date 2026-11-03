; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><meter id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></meter>") (= x "<div draggable=""true"" contenteditable>drag me</div><spacer ondrop=alert(1) contenteditable>drop here</spacer>") (= x "<style>:target {color: red;}</style><style id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></style>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u3041-\u{5c}u309F])[\u{5c}u3041-\u{5c}u309F\s]*") ((_ re.from_regex ecma2020 u) "^[A-Za-z '\-]{2,}$")))))
(check-sat)
