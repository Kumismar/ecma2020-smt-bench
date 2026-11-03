; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<details draggable=""true"" ondragend=""alert(1)"">test</details>") (= x "<?xml version=""1.0"" encoding=""ISO-8859-1""?><foo><![CDATA[<]]>SCRIPT<![CDATA[>]]>alert('gotcha');<![CDATA[<]]>/SCRIPT<![CDATA[>]]></foo>") (= x "<marquee draggable=""true"" ondragstart=""alert(1)"">test</marquee>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9-_@?!]{5,20}$") (re.union ((_ re.from_regex ecma2020 u) "^([\w.]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!abc.com)(?!xyz.com)(?!pqr.com)(?!rediffmail.com)(?!live.com)(?!outlook.com)(?!me.com)(?!msn.com)(?!ymail.com)([\w-]+\.)+[\w-]{2,4})?$") (re.++ (str.to_re "<?xml") re.all))))))
(check-sat)
