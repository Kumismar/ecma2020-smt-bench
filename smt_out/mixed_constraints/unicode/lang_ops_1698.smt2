; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<listing onmouseleave=""alert(1)"">test</listing>") (= x "<form draggable=""true"" ondragend=""alert(1)"">test</form>") (= x "<template id=x tabindex=1 ondeactivate=alert(1)></template><input id=y autofocus>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9_ +-,.?]{3,}$") (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z'][\sa-zA-Z-']*[a-zA-Z']'?"))))))
(check-sat)
