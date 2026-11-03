; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><script xlink:href=data&colon;,window.open('https://www.google.com/')></script") (= x "<listing onpaste=""alert(1)"" contenteditable>test</listing>") (= x "<kbd id=x tabindex=1 onfocusin=alert(1)></kbd>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z0-9._+!-]+[@](?:[a-zA-Z0-9-]+.)+[a-zA-Z]{2,})$") ((_ re.from_regex ecma2020) "^[0-9-+s()]*$"))))
(check-sat)
