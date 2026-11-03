; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<table oncopy=""alert(1)"" contenteditable>test</table>") (= x "<a href=""\xE2\x80\x8Ajavascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<strong onblur=alert(1) tabindex=1 id=x></strong><input autofocus>")))
(assert (str.in_re x (re.inter (re.diff (re.++ re.all (str.to_re "cript:") re.all) ((_ re.from_regex ecma2020) "^\d*(\.\d{0,2})?$")) (re.comp ((_ re.from_regex ecma2020) "[a-fA-F0-9_?]{3,6}")))))
(check-sat)
