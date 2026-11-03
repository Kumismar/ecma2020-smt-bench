; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<h1 onfocusout=alert(1) tabindex=1 id=x></h1><input autofocus>") (= x "<IMG SRC=x onended=""alert(String.fromCharCode(88,83,83))"">") (= x "<div draggable=""true"" contenteditable>drag me</div><link ondragover=alert(1) contenteditable>drop here</link>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[012])-(19|20)\d\d$")))))
(check-sat)
