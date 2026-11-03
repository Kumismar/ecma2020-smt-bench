; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "(?:^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$)ert\(1\)") ((_ re.from_regex ecma2020 u) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$")) ((_ re.from_regex ecma2020 u) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$")))
(check-sat)
