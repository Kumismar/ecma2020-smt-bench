; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<abbr draggable=""true"" ondrag=""alert(1)"">test</abbr>") (= x "<form oncopy=""alert(1)"" contenteditable>test</form>") (= x "<var oncontextmenu=""alert(1)"">test</var>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^\d{5}([\-]\d{4})?$") (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z.-_]+@[A-Za-z.-]+") ((_ re.from_regex ecma2020 u) "^(0|86|17951)?(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9]|19[0-9])[0-9]{8}")))))
(check-sat)
