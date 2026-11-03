; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<marquee onmouseleave=""alert(1)"">test</marquee>") (= x "<xml id=""xss"" src=""%(htc)s""></xml> <label dataformatas=""html"" datasrc=""#xss"" datafld=""payload""></label>") (= x "<var draggable=""true"" ondragend=""alert(1)"">test</var>")))
(assert (not (str.in_re x (re.inter (re.union (re.++ re.all (str.to_re "quee>")) (re.comp ((_ re.from_regex ecma2020 u) "[Aa][Ll][1-8Rr][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}|[Ss][Gg][3-4Rr14][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}|[Hh][Pp][2][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}|[Ww][Dd][6-7Rr][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}|[Ee][Nn][6][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}|"))) ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f6}\u{3000}\s]+$")))))
(check-sat)
