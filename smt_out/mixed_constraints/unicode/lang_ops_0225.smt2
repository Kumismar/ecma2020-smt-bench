; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<audio draggable=""true"" ondragleave=""alert(1)"">test</audio>") (= x "<section draggable=""true"" ondragstart=""alert(1)"">test</section>") (= x "&lt;STYLE type=\""text/css\""&gt;BODY{background&#58;url(\""javascript&#058;alert('XSS')\"")}&lt;/STYLE&gt;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[^/</>]+") (re.inter ((_ re.from_regex ecma2020 u) "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*\(?([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\)?\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$") (re.++ (str.to_re "<") re.all)))))
(check-sat)
