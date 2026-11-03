; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) " ona|(?:^[a-zA-Z0-9._%+-]+@(?!hotmail|gmail|yahoo|live|msn|outlook|verizon|aol|icloud|mail|ymail|att|HOTMAIL|GMAIL|YAHOO|LIVE|MSN|OUTLOOK|VERIZON|AOL|ICLOUD|MAIL|YMAIL|ATT|Hotmail|Gmail|Yahoo|Live|Msn|Outlook|Verizon|Aol|Icloud|Mail|Ymail|Att|GMail|gMail|iCloud)[a-zA-Z0-9_-]+\.[a-zA-Z0-9-.]{2,61}$)")) (str.in_re x ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@(?!hotmail|gmail|yahoo|live|msn|outlook|verizon|aol|icloud|mail|ymail|att|HOTMAIL|GMAIL|YAHOO|LIVE|MSN|OUTLOOK|VERIZON|AOL|ICLOUD|MAIL|YMAIL|ATT|Hotmail|Gmail|Yahoo|Live|Msn|Outlook|Verizon|Aol|Icloud|Mail|Ymail|Att|GMail|gMail|iCloud)[a-zA-Z0-9_-]+\.[a-zA-Z0-9-.]{2,61}$")))))
(check-sat)
