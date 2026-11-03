; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<hr onmouseup=""alert(1)"">test</hr>") (= x "a="";get"";;&;#10;b="";URL("";"";;&;#10;c="";javascript:"";;&;#\u{1f4a9}10;d="";alert(';XSS';);"";)"";;&#10;eval(a+b+c+d);") (= x "<svg><pre onload=alert(1)></pre>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$") (re.++ re.all (str.to_re "ipt:"";") re.all)) ((_ re.from_regex ecma2020 u) "^[^\u{b1}!@\u{a3}$%^&*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\/<>?:;|=]{1,20}$"))))
(check-sat)
