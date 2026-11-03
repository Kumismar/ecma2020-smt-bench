; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><map onload=alert(1)></map>") (= x "<option id=x tabindex=1 onbeforedeactivate=alert(1)></option><input autofocus>") (= x "<template ondblclick=""alert(1)"">test</template>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$") (re.inter ((_ re.from_regex ecma2020) "[A-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9 _]+$")))))
(check-sat)
