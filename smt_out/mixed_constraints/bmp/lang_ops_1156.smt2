; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<img oncopy=""a\u{1f4a9}lert(1\u{10348})"" contenteditable>test</img>") (= x "\u{201c}><s\u{201d}%2b\u{201d}cript>alert(document.cookie)</script>") (= x "<SCRIPT SRC=http://ha.ckers.org/xss.js?< B >")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "</img>")) (re.inter ((_ re.from_regex ecma2020) "^.{5,20}$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9_]*$")))))
(check-sat)
