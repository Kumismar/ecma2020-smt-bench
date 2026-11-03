; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg>\u{1d400}<dir onload=\u{1f4a9}alert(1)></dir>") (= x "<video oncut=""alert(1)"" contenteditable>test</video>") (= x "<q id=x tabindex=1 ondeactivate=alert(1)></q><input id=y autofocus>")))
(assert (str.in_re x (re.union (re.diff ((_ re.loop 48 57) re.allchar) ((_ re.from_regex ecma2020 u) "^[\+]?[0-9]{0,3}[(]?[0-9]{0,5}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{0,6}$")) ((_ re.from_regex ecma2020 u) "^((?!info@|sales@|administratie@|management@|inkoop@|verkoop@|administration@).)*$"))))
(check-sat)
