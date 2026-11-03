; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdi onbeforecut=""alert(1)"" contenteditable>test</bdi>") (= x "&lt;IMG SRC=javascript&#058;alert(String&#46;fromCharCode(88,83,83))&gt;") (= x "<i onbeforepaste=""alert(1)"" conte\u{1f600}nteditable>test</i>")))
(assert (not (str.in_re x (re.inter (re.inter (re.diff ((_ re.from_regex ecma2020) "(?=^.{0,40}$)^\+?(\d[\d\-\.\s]+)?(\([\d\-\.\s]+\))?[\d\-\.\s]+\d$") ((_ re.from_regex ecma2020) "^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$")) (re.comp ((_ re.from_regex ecma2020) "(?=^(.{10}|.{22})$)^\w*$"))) (re.++ (str.to_re "&lt;") re.all)))))
(check-sat)
