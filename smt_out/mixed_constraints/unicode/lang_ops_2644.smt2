; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;HTML xmlns:xss>;") (= x "<script src=""#"">{alert(1)}</script>;1") (= x "<audio oncanplay=alert(1)><source src=""validaudio.wav"" type=""audio/wav""></audio>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^([_A-z0-9]){2,}$") (re.inter (re.++ (str.to_re "<audio") re.all) ((_ re.from_regex ecma2020 u) "(?=.*\d).{6,}")))))
(check-sat)
