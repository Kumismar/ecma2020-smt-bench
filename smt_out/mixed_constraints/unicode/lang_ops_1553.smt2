; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<br onkeypress=""alert(1)"" contenteditable>test</br>") (= x "<strike ondblclick=""alert(1)"">test</strike>") (= x "<x%0Aonxxx=1")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "s=""a") re.all) (re.inter ((_ re.from_regex ecma2020 u) "^L[0-9]{2}P[0-9]{4}$") ((_ re.from_regex ecma2020 u) ".*@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!abc.com)(?!xyz.com)(?!pqr.com)(?!rediffmail.com)(?!live.com)(?!outlook.com)(?!me.com)(?!msn.com)(?!ymail.com)(?!doc-mail.net)(?!sharklasers.com)(?!mailinator.com)(?!mailcatch.com)(?!trashmail.com)(?!getnada.com)([\w-]+\.)+[\w-]{2,4}$")))))
(check-sat)
