; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<template onpaste=""alert(1)"" contenteditable>test</template>") (= x "<figcaption draggable=""true"" ondragenter=""alert(1)"">test</figcaption>") (= x "<FRAMESET><FRAME SRC=""javascript:alert('XSS');""></FRAMESET>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "(?!1234567)(?!1{5})(?!2{5})(?!3{5})(?!4{5})(?!5{5})(?!6{5})(?!7{5})(?!8{5})(?!9{5})(?!0{5})[0-9]{11}") ((_ re.from_regex ecma2020) "[1-2][0-9]{3}")) ((_ re.from_regex ecma2020) ".*[^\s]+.*")))))
(check-sat)
