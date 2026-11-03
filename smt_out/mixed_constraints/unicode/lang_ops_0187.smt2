; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<thead onmouseup=""alert(1)"">test</thead>") (= x "<template onclick=""alert(1)"">test</template>") (= x "<strike onmousedown=""alert(1)"">test</strike>")))
(assert (not (str.in_re x (re.comp (re.union (re.inter ((_ re.from_regex ecma2020 u) "^([0-9]{1,2}){1}(\/[0-9]{1,2}){0,1}(\/[0-9]{0,4}){0,1}$") (re.++ (str.to_re "<te") re.all)) (re.comp ((_ re.from_regex ecma2020 u) "^\d{4}\d{3}\d{4}$")))))))
(check-sat)
