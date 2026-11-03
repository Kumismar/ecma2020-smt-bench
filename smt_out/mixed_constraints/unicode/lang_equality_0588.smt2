; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "\d\d\d-\d\d\d-\d\d\d\d$") ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}\u{42e}\u{411}\u{426}\u{418}\u{425}\u{419}\u{41c}\u{41e}\u{421}\u{422}\u{423}\u{416}\u{417}\u{413}\u{42f}\u{430}\u{44e}\u{431}\u{446}\u{438}\u{445}\u{43c}\u{43e}\u{441}\u{442}\u{443}\u{436}\u{437}\u{433}\u{44f} ]{4,120}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "\d\d\d-\d\d\d-\d\d\d\d$") (re.comp ((_ re.from_regex ecma2020 u) "[A-Za-z\u{410}\u{42e}\u{411}\u{426}\u{418}\u{425}\u{419}\u{41c}\u{41e}\u{421}\u{422}\u{423}\u{416}\u{417}\u{413}\u{42f}\u{430}\u{44e}\u{431}\u{446}\u{438}\u{445}\u{43c}\u{43e}\u{441}\u{442}\u{443}\u{436}\u{437}\u{433}\u{44f} ]{4,120}")))))))
(check-sat)
