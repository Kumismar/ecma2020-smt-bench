; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<h1 draggable=""true"" ondrag=""al\u{1f4a9}ert(1)"">\u{20000}test</h1>") (= x "<abbr onfocusout=alert(1) tabindex=1 id=x></abbr><input autofocus>") (= x "<img src ?itworksonchrome?\/onerror = alert(1)")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5_\u{5c}u3002\u{5c}uff1b\u{5c}uff0c\u{5c}uff1a\u{5c}u201c\u{5c}u201d\u{5c}uff08\u{5c}uff09\u{5c}u3001\u{5c}uff1f\u{5c}u300a\u{5c}u300b_a-zA-Z0-9_]+$") ((_ re.from_regex ecma2020) "a")))))
(check-sat)
