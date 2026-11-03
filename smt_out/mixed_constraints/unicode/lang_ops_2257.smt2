; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<x%0Donxxx=1") (= x "<select onmousedown=""alert(1)"">test</select>") (= x "perl -e &apos;print &quot;&lt;IMG SRC=java\0script:alert(&quot;XSS&quot;)>&quot;;&apos;&gt; out")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^([0-9 ]){4,4}$") ((_ re.from_regex ecma2020 u) "^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$")) (re.++ (str.to_re "<x%0Do") re.all)))))
(check-sat)
