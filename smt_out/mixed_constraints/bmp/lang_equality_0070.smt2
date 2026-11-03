; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "[A-Za-z0-9._%-]+@(?!(aol|outlook|alice|topnet|nerim|ovh|gmail|orange|yahoo|laposte|hotmail|wanadoo|free))([0-9A-Za-z-]+\.[0-9A-Za-z-]{2,})") ((_ re.from_regex ecma2020) "ndex=1|(?:[A-Za-z0-9._%-]+@(?!(aol|outlook|alice|topnet|nerim|ovh|gmail|orange|yahoo|laposte|hotmail|wanadoo|free))([0-9A-Za-z-]+\.[0-9A-Za-z-]{2,}))"))))
(check-sat)
