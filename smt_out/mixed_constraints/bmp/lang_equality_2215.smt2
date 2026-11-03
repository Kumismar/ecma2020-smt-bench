; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^((([0-9]{5})(?:-(?=[0-9]))?([0-9]{4})?)|([ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy][0-9][A-Za-z] ?[0-9][A-Za-z][0-9]))$") ((_ re.from_regex ecma2020) "([A-Za-z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}]{1,}(\.{1})?( {1})?){1,}"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "([A-Za-z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}]{1,}(\.{1})?( {1})?){1,}") ((_ re.from_regex ecma2020) "^((([0-9]{5})(?:-(?=[0-9]))?([0-9]{4})?)|([ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy][0-9][A-Za-z] ?[0-9][A-Za-z][0-9]))$"))))))
(check-sat)
