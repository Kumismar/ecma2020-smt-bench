; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<th oncut=""alert(1)"" contenteditable\u{10348}>test</th>") (= x "<![CDATA[<script>var n=0;while(true){n++;}</script>]]>") (= x "<element draggable=""true"" ondragend=""alert(1)"">test</element>")))
(assert (not (str.in_re x (re.inter (re.++ re.all (str.to_re "t</th>")) (re.union ((_ re.from_regex ecma2020) "[0-9\.]{3,10}") ((_ re.from_regex ecma2020) "(?=.*?[\u{5c}u3041-\u{5c}u309F\u{5c}u30FC])[\u{5c}u3041-\u{5c}u309F\u{5c}u30FC\s]*"))))))
(check-sat)
