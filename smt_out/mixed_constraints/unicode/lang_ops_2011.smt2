; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script>     function b() { return Safe.get(); } alert(b({type:String.fromCharCode(99,108,105,99,107),isTrusted:true})); </script>") (= x "<ul oncopy=""alert(1)"" contenteditable>test</ul>") (= x "<center oncontextmenu=""alert(1)"">test</center>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "ion b") re.all) (re.union ((_ re.from_regex ecma2020 u) "[0-2]{0,1}") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$")))))
(check-sat)
