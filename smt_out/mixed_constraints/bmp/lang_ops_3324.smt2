; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<form onbeforepaste=""alert(1)"" contenteditable>test</form>") (= x "<footer onmouseup=""alert(1)"">test</footer>") (= x "<picture><source srcset=""validimage.png""><img onload=alert(1)></picture>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "[A-Za-z .-]{2,}") (re.comp ((_ re.from_regex ecma2020) "^[_A-z0-9\u{5c}u4e00-\u{5c}u9fa5]{1,}$"))) (re.comp (re.diff ((_ re.loop 57 63) re.allchar) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@(?!hotmail|gmail|yahoo|live|msn|outlook|verizon|aol|icloud|mail|ymail|att|HOTMAIL|GMAIL|YAHOO|LIVE|MSN|OUTLOOK|VERIZON|AOL|ICLOUD|MAIL|YMAIL|ATT|Hotmail|Gmail|Yahoo|Live|Msn|Outlook|Verizon|Aol|Icloud|Mail|Ymail|Att|GMail|gMail|iCloud)[a-zA-Z0-9_-]+\.[a-zA-Z0-9-.]{2,61}$"))))))
(check-sat)
