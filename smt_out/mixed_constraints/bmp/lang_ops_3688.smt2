; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<bdo draggable=""true"" ondragenter=""alert(1)"">test</bdo>") (= x "<samp onbeforecut=""alert(1)"" contenteditable>test</samp>") (= x "<a href=""\x1Ajavascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))") ((_ re.from_regex ecma2020) "(?=^.{8,}$)((?=.*\d)(?=.*\W+))(?![.\n])(?=.*[A-Z]?)(?=.*[a-z]?).*$"))))
(check-sat)
