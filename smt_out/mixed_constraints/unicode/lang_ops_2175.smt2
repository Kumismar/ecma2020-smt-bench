; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "xss&#58;ex&#x2F;*XSS*//*/*/pression(alert(\""XSS\""))'&gt;") (= x "<center onbeforepaste=\u{1f600}""alert(1)"" contenteditable>test</\u{1f600}center>") (= x "<blockquote onm\u{1f4a9}ouseup=""alert(\u{20000}1)"">test</blockquote>")))
(assert (not (str.in_re x (re.inter (re.++ re.all (str.to_re "er>")) (re.inter ((_ re.from_regex ecma2020 u) "^welcome@goodcells.com.ua$") ((_ re.from_regex ecma2020 u) "^(?!.*--)[0-9 /]+$"))))))
(check-sat)
