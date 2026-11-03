; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<template draggable=""true"" ondrag=""alert(1)"">test</template>") (= x "<image onmouseup=""alert(1)"">test</image>") (= x "<style>@keyframes x{}</style><map style=""animation-name:x"" onanimationend=""alert(1)""></map>")))
(assert (not (str.in_re x (re.comp (re.union (re.++ (str.to_re "<templ") re.all) (re.diff ((_ re.from_regex ecma2020 u) "^(\+?1[ -]?)?\(?[2-9]\d\d\)?[ -]?[2-9]\d\d[ -]?\d{4}$") (re.comp ((_ re.from_regex ecma2020 u) "[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum)\b"))))))))
(check-sat)
