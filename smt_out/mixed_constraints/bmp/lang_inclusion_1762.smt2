; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$") ((_ re.from_regex ecma2020) "[a-z0-9\*]{10}")) ((_ re.from_regex ecma2020) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$")) ((_ re.from_regex ecma2020) "^[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{1,40}(\/[A-Za-z\s\xA6\xA8\xAA\xB4\xB5\xB8\xBA\xBC-\xBE\xC0-\xD6\xD8-\xF6\xF8-\xFF\-/]{0,40})?$"))))
(check-sat)
