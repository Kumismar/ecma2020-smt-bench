; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<strong oncontextmenu=""alert(1)"">test</strong>") (= x "<IMG SRC=&#106;&#97;&#118;&#97;&#115;&#99;&#114;&#105;&#112;&#116;&#58;&#97;&#108;&#101;&#114;&#116;&#40;&#39;&#88;&\u{1d400}#83;&#83;&#39;&#41;>") (= x "<menu id=x tabindex=1 onbeforeactivate=alert(1)></menu>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^([^.@]+)(\.[^.@]+)*@([^.@]+\.)+([^.@]+)$") (re.++ re.all (str.to_re "ex=1 ") re.all)) ((_ re.from_regex ecma2020 u) "^[^@]+@\w+\.\w+$"))))
(check-sat)
