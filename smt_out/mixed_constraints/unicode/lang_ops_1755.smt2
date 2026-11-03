; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "\u{10348}&#X03c") (= x "&#x003c") (= x "<body onorientationchange=alert(1)>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}\u{411}\u{412}\u{413}\u{414}\u{415}\u{416}\u{417}\u{418}\u{419}\u{41a}\u{41b}\u{41c}\u{41d}\u{41e}\u{41f}\u{420}\u{421}\u{422}\u{423}\u{424}\u{425}\u{426}\u{428}\u{429}\u{42a}\u{42b}\u{42c}\u{42d}\u{42e}\u{42f}\u{430}\u{431}\u{432}\u{433}\u{434}\u{435}\u{436}\u{437}\u{438}\u{439}\u{43a}\u{43b}\u{43c}\u{43d}\u{43e}\u{43f}\u{440}\u{441}\u{442}\u{443}\u{444}\u{445}\u{446}\u{448}\u{449}\u{44a}\u{44b}\u{44c}\u{44d}\u{44e}\u{44f}]*$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9-_\.]{2,20}$")) ((_ re.from_regex ecma2020 u) "^\s*\d{10}\s*"))))
(check-sat)
