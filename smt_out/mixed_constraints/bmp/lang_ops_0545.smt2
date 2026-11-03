; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<form onkeypress=""alert(1)"" contenteditable>test</form>") (= x "<blockquote onbeforecopy=""alert(1)"" contenteditable>test</blockquote>") (= x "<link id=x tabindex=1 onactivate=alert(1)></link>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?!.\n)(?!.*\s).{6,}") ((_ re.from_regex ecma2020) "^\d{7,8}$"))))
(check-sat)
