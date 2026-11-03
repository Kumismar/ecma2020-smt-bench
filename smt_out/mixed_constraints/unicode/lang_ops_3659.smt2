; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<form draggable=""true"" ondragend=""alert(1)"">test</form>") (= x "<header onpaste=""alert(1)"" contenteditable>test</header>") (= x "<section oncontextmenu=""alert(1)"">test</section>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^([0-9]{16}|\*{12}[0-9]{4})$") (re.union ((_ re.from_regex ecma2020 u) "^(?:[A-\u{d6}]|[a-\u{f6}]|[\s])*$") ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}\u{430}-\u{44f}\s-]{2,15})$"))))))
(check-sat)
