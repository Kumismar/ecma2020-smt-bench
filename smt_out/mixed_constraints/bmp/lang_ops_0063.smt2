; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dt id=x tabindex=1 onbeforedeactivate=alert(1)></dt><input autofocus>") (= x "<div draggable=""true"" contenteditable>drag me</div><bgsound ondragover=alert(1) contenteditable>drop here</bgsound>") (= x "<nav id=x tabindex=1 ondeactivate=alert(1)></nav><input id=y autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[\+][3][8][0][0-9]{2}[0-9]{7}$|^[\+][3][8][\(][0][0-9]{2}[\)][0-9]{7}$|^[\+][3][8][\(][0][0-9]{2}[\)][0-9]{3}[-][0-9]{2}[-][0-9]{2}$") (re.comp ((_ re.from_regex ecma2020) "^\d{1,2}.\d{1,2}\.\d{4}$")))))
(check-sat)
