; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noframes onfocusout=alert(1) tabindex=1 id=x></noframes><input autofocus>") (= x "&lt;LINK REL=&quot;stylesheet&quot; HREF=&quot;http://ha.ckers.org/xss.css&quot;&gt;") (= x "<audio onkeydown=""alert(1)"" contenteditable>test</audio>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[0-9]{2}\.[0-9]{2}\.[0-9]{4}") ((_ re.from_regex ecma2020) "^\+[0-9\s]{6,20}$")))))
(check-sat)
