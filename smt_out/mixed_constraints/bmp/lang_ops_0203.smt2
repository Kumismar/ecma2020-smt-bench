; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><animate onrepeat=alert(1) attributeName=x dur=1s repeatCount=2 />") (= x "<param draggable=""true"" ondragleave=""alert(1)"">test</param>") (= x "<select id=x tabindex=1 onbeforeactivate=alert(1)></select>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.loop 64 76) re.allchar) (re.comp ((_ re.from_regex ecma2020) "(?!-)[a-zA-Z0-9-]{1,63}"))) (re.union ((_ re.from_regex ecma2020) "^([a-zA-Z '-]+)$") ((_ re.from_regex ecma2020) "[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}"))))))
(check-sat)
