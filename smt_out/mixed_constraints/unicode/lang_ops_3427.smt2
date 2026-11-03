; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><footer ondragover=alert(1) contenteditable>drop here</footer>") (= x "<div id=""99"">XXX<style>") (= x "<a href=""javas\x0Dcript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "1[3456789]\d{9}$") ((_ re.from_regex ecma2020 u) "^[A-z0-9]{4,30}$")))))
(check-sat)
