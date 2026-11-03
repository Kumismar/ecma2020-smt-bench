; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div id=""128""><svg><style>&lt;img/src=x onerror=alert(128)// </b>//[""'`-->]]>]</div>") (= x "<marquee draggable=""true"" ondragleave=""alert(1)"">test</marquee>") (= x "<div draggable=""true"" contenteditable>drag me</div><em ondragover=alert(1) contenteditable>drop here</em>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-z0-9_.+-]+@[a-z0-9-]+\.[a-z0-9-.]+$") ((_ re.from_regex ecma2020 u) "^(13[0-9]|14[5|7]|15[0|1|2|3|4|5|6|7|8|9]|18[0|1|2|3|4|5|6|7|8|9])\d{8}$"))))
(check-sat)
