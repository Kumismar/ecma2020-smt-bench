; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$") ((_ re.from_regex ecma2020) "&#|(?:^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$)")) (re.diff ((_ re.from_regex ecma2020) "&#|(?:^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$)") ((_ re.from_regex ecma2020) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$")))))
(check-sat)
