; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b\u{1d400}do draggable=""true"" ond\u{1f4a9}ragleave=""alert(1)"">test</bdo>") (= x "<STYLE>.XSS{background-image:url(""javascript:javascript:alert(1)"");}</STYLE><A CLASS=XSS></A>") (= x "<datalist onkeydown=""alert(1)"" contenteditable>test</datalist>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "(^(1300|1800|1900|1902)(|)[0-9]{3}(|)[0-9]{3}$)|(((^[\+]*61[2|3|4|7|8]{1})|^0[2|3|7|8]{1})(|)[0-9]{4}(|)[0-9]{4}$)|(^014(|)([0-9]{5}|[0-9]{6}|[0-9]{7})$)|(^13(|)[0-9]{4}$)|(^04[0-9]{2}(|)[0-9]{3}(|)[0-9]{3}$)") (re.comp (re.++ (str.to_re "<b\u{1d400}do ") re.all))) (re.comp ((_ re.from_regex ecma2020) "^\+?[\d\s\-\(\)]{8,}$")))))
(check-sat)
