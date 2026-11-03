; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<html onMouseUp html onMouseUp=""javascript:javascript:alert(1)""></html onMouseUp>") (= x "<div draggable=""true"" contenteditable>drag me</div><body ondragover=alert(1) contenteditable>drop here</body>") (= x "exp/*<A STYLE='no\xss:noxss(""*//*"");xss:ex/*XSS*//*/*/pression(document.vulnerable=true)'>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^((\\+91-?)|0)?[0-9]{10}$") (re.inter ((_ re.from_regex ecma2020) "^([\w+-.%]+@[\w\-.]+\.[A-Za-z]{2,4},*[\W]*)+$") (re.++ re.all (str.to_re "script") re.all))))))
(check-sat)
