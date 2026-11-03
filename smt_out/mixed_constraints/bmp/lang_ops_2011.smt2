; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<html onMouseDown html onMouseDown=""javascript:javascript:alert(1)""></html onMouseDown>") (= x "<style>:target {transform: rotate(180deg);}</style><content id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></content>") (= x "<spacer onmousemove=""alert(1)"">test</spacer>")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^.+@.+\.[a-z]+$") (re.inter ((_ re.from_regex ecma2020) "^([\w+-.%]+@[\w\-.]+\.[A-Za-z]{2,4},*[\W]*)+$") ((_ re.from_regex ecma2020) "\D{2}\d{4}\D{1}"))) (re.++ (str.to_re "<ht") re.all)))))
(check-sat)
