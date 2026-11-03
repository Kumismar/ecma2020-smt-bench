; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^([\w!#$%&'*+\-\/=?\^`{|}~]+\.)*[\w!#$%&'*+\-\/=?\^`{|}~]+@((((([a-zA-Z0-9]{1}[a-zA-Z0-9\-]{0,62}[a-zA-Z0-9]{1})|[a-zA-Z])\.)+[a-zA-Z]{2,62})|(\d{1,3}\.){3}\d{1,3}(:\d{1,5})?)$") (re.inter ((_ re.from_regex ecma2020) "^([\w!#$%&'*+\-\/=?\^`{|}~]+\.)*[\w!#$%&'*+\-\/=?\^`{|}~]+@((((([a-zA-Z0-9]{1}[a-zA-Z0-9\-]{0,62}[a-zA-Z0-9]{1})|[a-zA-Z])\.)+[a-zA-Z]{2,62})|(\d{1,3}\.){3}\d{1,3}(:\d{1,5})?)$") ((_ re.from_regex ecma2020) "(-?[0-9]{0,2})|(-?[0-9]{0,2}\.(?=[0-9])[0-9]*)"))) ((_ re.from_regex ecma2020) "^([\w!#$%&'*+\-\/=?\^`{|}~]+\.)*[\w!#$%&'*+\-\/=?\^`{|}~]+@((((([a-zA-Z0-9]{1}[a-zA-Z0-9\-]{0,62}[a-zA-Z0-9]{1})|[a-zA-Z])\.)+[a-zA-Z]{2,62})|(\d{1,3}\.){3}\d{1,3}(:\d{1,5})?)$"))))
(check-sat)
