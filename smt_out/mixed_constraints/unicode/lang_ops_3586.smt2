; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<script>     function b() { return Safe.get(); } alert(b({type:String.fromCharCode(99,108,105,99,107),isTrusted:true})); </script>") (= x "<script onerror=alert(1) src=/></script>") (= x "<rb onblur=alert(1) tabindex=1 id=x></rb><input autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) ".*^\d{2,4}-?\d{2,4}-?\d{4}$.*") ((_ re.from_regex ecma2020 u) "^(0941)([0-9]{7})"))))
(check-sat)
