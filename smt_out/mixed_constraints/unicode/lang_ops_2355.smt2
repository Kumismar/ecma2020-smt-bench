; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<samp onblur=alert(1) tabindex=1 id=x></samp><input autofocus>") (= x "<basefont id=x tabindex=\u{1f4a9}1 onbeforedea\u{20000}ctivate=alert(1)></basefont><input autofocus>") (= x "<video autoplay controls onvolumechange=alert(1)><source src=""validvideo.mp4"" type=""video/mp4""></video>")))
(assert (str.in_re x (re.diff (re.inter (re.++ (str.to_re "<base") re.all) ((_ re.from_regex ecma2020 u) "^[0-9]{10,20}")) (re.diff ((_ re.from_regex ecma2020 u) "WindelKunterbunt") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$")))))
(check-sat)
