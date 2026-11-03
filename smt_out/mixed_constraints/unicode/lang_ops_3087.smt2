; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&{document.vulnerable=true;};") (= x "<style>@keyframes x{}</style><strike style=""animation-name:x"" onanimationstart=""alert(1)""></strike>") (= x "<figure draggable=""true"" ondragstart=""alert(1)"">test</figure>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z s]+$") ((_ re.from_regex ecma2020 u) "\d{5}([\-]\d{4})?"))))
(check-sat)
