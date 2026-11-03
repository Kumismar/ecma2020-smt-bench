; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<caption id=x tabindex=1 onfocusin=alert(1)></caption>") (= x "<shadow onmouseleave=""alert(1\u{1f600})"">test</shado\u{20000}w>") (= x "<dd draggable=""true"" ondragstart=""alert(1)"">test</dd>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "(^[-_A-Za-z0-9]+$)") ((_ re.from_regex ecma2020) "^([a-z\u{e4}\u{f6}\u{fc}A-Z\u{c4}\u{d6}\u{dc}\u{df}0-9\-]{0,63})$")))))
(check-sat)
