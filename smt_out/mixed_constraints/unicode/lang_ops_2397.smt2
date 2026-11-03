; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><div ondrop=alert(1) contenteditable>drop here</div>") (= x "<;A HREF="";http://1113982867/"";>;XSS<;/A>;") (= x "<style>:target {color: red;}</style><strong id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></strong>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{7}-[0-9]{7}$") ((_ re.from_regex ecma2020 u) "^1((3|4|5|6|7|8|9){1}\d{1})\d{8}$"))))))
(check-sat)
