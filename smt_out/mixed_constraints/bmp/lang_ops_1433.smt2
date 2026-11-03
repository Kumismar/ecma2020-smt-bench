; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<video autoplay onloadedmetadata=alert(1)> <source src=""validvideo.mp4"" type=""video/mp4""></video>") (= x "<IMG SRC=&#x6A&#x61&#x76&#x61&#x73&#x63&#x72&#x69&#x70&#x74&#x3A&#x61&#x6C&#x65&#x72&#x74&#x28&#x27&#x58&#x53&#x53&#x27&#x29>") (= x "<h1 onblur=alert(1) tabindex=1 id=x></h1><input autofocus>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^([!#-'*+\\-\\/-9=?A-Z^-~]+[.])*[!#-'*+\\-\\/-9=?A-Z^-~]+@[a-zA-Z0-9.-]+[\.]+[a-zA-Z0-9.-]+$") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z_.-]+@[0-9a-zA-Z.-]+[.]+[a-zA-Z]{2,3}$"))))
(check-sat)
