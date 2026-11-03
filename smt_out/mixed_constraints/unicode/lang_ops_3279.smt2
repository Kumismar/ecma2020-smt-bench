; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """`'><script>\xC2\x85javascript:alert(1)</script>") (= x "<input onmousemove=""alert(1)"">test</input>") (= x "<area onmouseup=""alert(1)"">test</area>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[^@]+@(?!(hotmail.com|gmail.com|outlook.com|yahoo.com|qq.com|live.com|163.com|msn.com|hotmail.co.uk|icloud.com|aol.com|comcast.net|googlemail.com|mail.ru|126.com|live.co.uk|me.com|hotmail.fr|yandex.ru|web.de|yahoo.com.br|yahoo.co.uk|gmx.de|ymail.com|verizon.net|mail.com|mac.com|rocketmail.com|sina.com|yahoo.fr|sbcglobal.net|yahoo.co.jp|att.net|rr.com|bellsouth.net|windowslive.com|wanadoo.fr|yahoo.com.tw|wp.pl|free.fr|gmx.net|yahoo.es|laposte.net|yahoo.co.in|gmial.com|bol.com.br|rambler.ru|ya.ru|hotmail.it|gmx.com|onmicrosoft.com|naver.com|outlook.fr|live.nl|outlook.jp|outlook.es|live.fr|outlook.it|ocn.ne.jp|hotmail.co.jp|outlook.de|getnada.com|xs4all.nl|btinternet.com|hotmail.es|kpn.com|outlook.kr|protonmail.|outlook.com.au|rogers.com|live.it|live.jp|hotmail.de|live.in|live.dk|mailinator.com|yandex.com|cox.net))[^@]+\.[a-z]{2,}$") (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{9}$")))))
(check-sat)
