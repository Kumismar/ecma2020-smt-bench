; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<sCrIpt/""<a""/srC=data:="".<a,[8].some(confirm)>") (= x "<div draggable=""true"" contenteditable>drag me</div><pre ondragover=alert(1) contenteditable>drop here</pre>") (= x "<hgroup onblur=alert(1) tabindex=1 id=x></hgroup><input autofocus>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)+$") ((_ re.from_regex ecma2020 u) "\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b")) ((_ re.from_regex ecma2020 u) "^[^<>]+$"))))
(check-sat)
