; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<template onblur=alert(1) tabindex=1 id=x></template><input autofocus>") (= x "<main onmouseover=""alert(1)"">test</main>") (= x "<a href=""javas\x08cript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.comp (re.union ((_ re.loop 38 44) re.allchar) (re.inter ((_ re.from_regex ecma2020) "^[KF]?[0-9]{6,7}$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$"))))))
(check-sat)
