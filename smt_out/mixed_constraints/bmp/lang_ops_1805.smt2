; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<iframe src=""javascript:document.vulnerable=true; <") (= x "<;IMG DYNSRC="";javascript:alert(';XSS';);"";>;") (= x "<template oncopy=""alert(1)"" contenteditable>test</template>")))
(assert (str.in_re x (re.diff (re.++ re.all (str.to_re "; <")) (re.inter ((_ re.from_regex ecma2020) "^[0-3]{1}[0-9]{1}/[0-1]{1}[0-9]{1}/[0-9]{4}$") ((_ re.from_regex ecma2020) "(-?[0-9]{0,2})|(-?[0-9]{0,2}\.(?=[0-9])[0-9]*)")))))
(check-sat)
