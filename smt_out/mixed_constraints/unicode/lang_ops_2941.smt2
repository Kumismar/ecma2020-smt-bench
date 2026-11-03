; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IFRAME SRC=# onmouseover=""alert(document.cookie)""></IFRAME>") (= x "<wbr onmouseover=""alert(1)"">test</wbr>") (= x "<img src=x onerror=\x12""javascript:alert(1)"">")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[^.]+$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^([A-Za-z0-9_\-\.])+@([A-Za-z0-9_\-])+.\.([A-Za-z]{2,4})$") (re.comp ((_ re.from_regex ecma2020 u) "^([+]|[0-0]{2})+[0-9\s]+")))))))
(check-sat)
