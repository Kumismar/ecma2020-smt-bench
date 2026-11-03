; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;STYLE>;@import';http://ha.ckers.org/xss.css';;<;/STYLE>;") (= x "<svg><col onload=alert(1)></col>") (= x "<title onblur=alert(1) tabindex=1 id=x></title><input autofocus>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143} /,.]){2,}$") (re.union ((_ re.from_regex ecma2020) "(^rs\d+$)|(^chr(\d{1,2}|(x|y|X|Y)):\d+$)") ((_ re.from_regex ecma2020) "^([\u{410}-\u{42f}0-9]([\u{430}-\u{44f}0-9]){0,}(.)?){1,}$")))))))
(check-sat)
