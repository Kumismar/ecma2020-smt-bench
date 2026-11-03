; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^[0-9a-z][a-z0-9\._-]{1,}@[a-z0-9-]{1,}[a-z0-9]\.[a-z\.]{1,}[a-z]$") ((_ re.from_regex ecma2020) "^(430463|438106|438587|438628|438628|455038|455390|456407|461795|461796|461797|520386|524133|529117|529495|531662|541497|544170|549852|552137|554637)[0-9]{10}$")) (re.inter ((_ re.from_regex ecma2020) "^[0-9a-z][a-z0-9\._-]{1,}@[a-z0-9-]{1,}[a-z0-9]\.[a-z\.]{1,}[a-z]$") (re.comp ((_ re.from_regex ecma2020) "^(430463|438106|438587|438628|438628|455038|455390|456407|461795|461796|461797|520386|524133|529117|529495|531662|541497|544170|549852|552137|554637)[0-9]{10}$"))))))
(check-sat)
