; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<code onmousemove=""alert(1)"">test</code>") (= x "<optgroup oncopy=""alert(1)"" contenteditable>test</optgroup>") (= x "<pre onbeforecut=""alert(1)"" contenteditable>test</pre>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(((http|https)://)?(www.)?(youtube\.com\/(channel)/(.+)|youtube\.com\/(user)/(.+)))$") (re.comp ((_ re.from_regex ecma2020) "^.{6,18}$"))))))
(check-sat)
