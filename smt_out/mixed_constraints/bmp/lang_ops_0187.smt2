; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<progress oncontextmenu=""alert(1)"">test</progress>") (= x "<br draggable=""true"" ondragstart=""alert(1)"">test</br>") (= x "<basefont onbeforecopy=""alert(1)"" contenteditable>test</basefont>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,10}|[\d]{1,3})){1,2})$") (re.inter (re.union ((_ re.from_regex ecma2020) "^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})$") (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9`~!@$^().\-_]{6,39}"))) (re.comp (re.++ re.all (str.to_re "r>"))))))))
(check-sat)
