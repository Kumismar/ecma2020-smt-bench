; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style type=""text/javascript"">document.vulnerable=true;</style>") (= x "<samp id=x tabindex=1 onbeforedeactivate=alert(1)></samp><input autofocus>") (= x """`'><script>\xE2\x80\x81javascript:alert(1)</script>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:(\s*\(?([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\)?\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})$") (re.comp (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9]*$") ((_ re.from_regex ecma2020) "[\u{30a1}-\u{30f3}|\u{3000}| |\u{30fc}]+$"))))))
(check-sat)
