; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@(?!(me|gmail|protonmail|aol|outlook|live|prodigy|yahoo|mail|icloud|msn|wanadoo|yandex|zohomail|tutanota|tutamail|tuta|keepmail|hotmail|)\.)[a-z0-9.-]+\.[a-z.]{2,}$") ((_ re.from_regex ecma2020 u) "=true\}|(?:[a-z0-9._%+-]+@(?!(me|gmail|protonmail|aol|outlook|live|prodigy|yahoo|mail|icloud|msn|wanadoo|yandex|zohomail|tutanota|tutamail|tuta|keepmail|hotmail|)\.)[a-z0-9.-]+\.[a-z.]{2,}$)")) (re.diff ((_ re.from_regex ecma2020 u) "=true\}|(?:[a-z0-9._%+-]+@(?!(me|gmail|protonmail|aol|outlook|live|prodigy|yahoo|mail|icloud|msn|wanadoo|yandex|zohomail|tutanota|tutamail|tuta|keepmail|hotmail|)\.)[a-z0-9.-]+\.[a-z.]{2,}$)") ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@(?!(me|gmail|protonmail|aol|outlook|live|prodigy|yahoo|mail|icloud|msn|wanadoo|yandex|zohomail|tutanota|tutamail|tuta|keepmail|hotmail|)\.)[a-z0-9.-]+\.[a-z.]{2,}$")))))
(check-sat)
