; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<wbr id=x tabindex=1 onfocus=alert(1)></wbr>") (= x "<audio oncanplay=alert(1)><source src=""validaudio.wav"" type=""audio/wav""></audio>") (= x "<table draggable=""true"" ondragleave=""alert(1)"">test</table>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=.*[a-zA-Z])[A-Za-z0-9]{4,64}$") (re.comp ((_ re.from_regex ecma2020) "([cbCB]{2})([0123456789]{10})"))))))
(check-sat)
