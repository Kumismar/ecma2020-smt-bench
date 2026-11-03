; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<audio autoplay onplay=alert(1)><source src=""validaudio.wav"" type=""audio/wav""></audio>") (= x "<div id=""126""><object id=""x"" classid=""clsid:CB927D12-4FF7-4a9e-A169-56E4B8A75598""></object>") (= x "<img draggable=""true"" ondrag=""alert(1)"">test</img>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[A-z]{1,40}$") (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{5}(-[0-9]{4})?$") ((_ re.from_regex ecma2020 u) "^(?:\+?61|0)4(?:[01]\d{3}|(?:2[1-9]|3[0-57-9]|4[7-9]|5[0-15-9]|6[679]|7[3-8]|8[1478]|9[07-9])\d{2}|(?:20[2-9]|444|52[0-6]|68[3-9]|70[0-7]|79[01]|820|890|91[0-4])\d|(?:200[0-3]|201[01]|8984))\d{4}$"))))))
(check-sat)
