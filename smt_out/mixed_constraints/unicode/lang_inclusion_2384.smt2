; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "^(?:((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-.\s])){1,}(['\u{2019},\-\.]){0,1}){2,}(([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-. ]))*(([ ]+){0,1}(((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-\.\s])){1,})(['\u{2019}\-,\.]){0,1}){2,}((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-\.\s])){2,})?)*)$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^(?:((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-.\s])){1,}(['\u{2019},\-\.]){0,1}){2,}(([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-. ]))*(([ ]+){0,1}(((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-\.\s])){1,})(['\u{2019}\-,\.]){0,1}){2,}((([^0-9_!\u{a1}?\u{f7}?\u{bf}/\\+=@#$%\u{2c6}&*(){}|~<>;:[\]'\u{2019},\-\.\s])){2,})?)*)$)(?:"">te)?"))))
(check-sat)
