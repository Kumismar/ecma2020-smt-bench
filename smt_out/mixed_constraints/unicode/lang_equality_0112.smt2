; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020 u) "^[\w.+-]+@(?!xn--)[\w.-]+(\.[A-Za-z]{2,})$") ((_ re.from_regex ecma2020 u) "^(?=\d{2}([-.,\/])\d{2}\1\d{4}$)(?:0[1-9]|1\d|[2][0-8]|29(?!.02.(?!(?!(?:[02468][1-35-79]|[13579][0-13-57-9])00)\d{2}(?:[02468][048]|[13579][26])))|30(?!.02)|31(?=.(?:0[13578]|10|12))).(?:0[1-9]|1[012]).\d{4}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[\w.+-]+@(?!xn--)[\w.-]+(\.[A-Za-z]{2,})$") (re.comp ((_ re.from_regex ecma2020 u) "^(?=\d{2}([-.,\/])\d{2}\1\d{4}$)(?:0[1-9]|1\d|[2][0-8]|29(?!.02.(?!(?!(?:[02468][1-35-79]|[13579][0-13-57-9])00)\d{2}(?:[02468][048]|[13579][26])))|30(?!.02)|31(?=.(?:0[13578]|10|12))).(?:0[1-9]|1[012]).\d{4}$"))))))
(check-sat)
