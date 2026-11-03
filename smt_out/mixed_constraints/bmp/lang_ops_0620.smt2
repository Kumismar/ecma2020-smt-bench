; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<applet onmousemove=""alert(1)"">test</applet>") (= x "<shadow onblur=alert(1) tabindex=1 id=x></shadow><input autofocus>") (= x "<IMG SRC=x onbeforeunload=""alert(String.fromCharCode(88,83,83))"">")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\S+@\S+\.\S+") (re.inter (re.++ re.all (str.to_re "plet>")) ((_ re.from_regex ecma2020) "^[\s\p{L}]+ [\s\p{L}]+"))))))
(check-sat)
