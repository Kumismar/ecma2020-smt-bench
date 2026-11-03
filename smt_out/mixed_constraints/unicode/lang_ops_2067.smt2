; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onkeypress=""alert(String.fromCharCode(88,83,83))"">") (= x """><STYLE>@import""javascript:alert('XSS')"";</STYLE>") (= x "&lt;META HTTP-EQUIV=\""refresh\"" CONTENT=\""0; URL=http&#58;//;URL=javascript&#058;alert('XSS');\""")))
(assert (not (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[^-\s][a-zA-Z\u{c0}-\u{fa} ]*") (re.comp ((_ re.from_regex ecma2020 u) "^([^0-9]*)"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}\-]{3,20}$")))))
(check-sat)
