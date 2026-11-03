; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<audio autoplay controls onpause=alert(1)><source src=""validaudio.wav"" type=""audio/wav""></audio>") (= x "'%22--%3E%3C/style%3E%3C/script%3E%3Cscript%3Eshadowlabs(0x000045)%3C/script%3E") (= x "<keygen onclick=""alert(1)"">test</keygen>")))
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^.{6,64}$") (re.diff (re.++ re.all (str.to_re ">")) ((_ re.from_regex ecma2020) "^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,6})+$"))) ((_ re.from_regex ecma2020) ".{5,7}"))))
(check-sat)
