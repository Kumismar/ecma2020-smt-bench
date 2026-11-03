; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<image style='filter:url(""data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22><script>parent.alert(129)</script></svg>"")'>") (= x "<script\x0Dtype=""text/javascript"">javascript:alert(1);</script>") (= x "<var id=x tabindex=1 onfocusin=alert(1)></var>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "((0|84|\+84)(70|79|77|76|78|89|90|93|83|84|85|81|82|88|91|94|32|33|34|35|36|37|38|39|86|96|97|98|56|58|92|59|99)([0-9]{7})\b)|((0212|0213|0214|0215|0216|0232|0233|0234|0235|0236|0237|0238|0239|0203|0204|0205|0206|0207|0208|0209|0220|0221|0222|0225|0226|0227|0228|0229|0290|0291|0292|0293|0294|0296|0297|0299)([0-9]{7})\b)|((0251|0252|0254|0255|0256|0257|0258|0259|0260|0261|0262|0263|0269|0270|0271|0272|0273|0274|0275|0276|0277|0211|0210|0218|0219)([0-9]{7})\b)|((024|028)([0-9]{8})\b)") (re.union ((_ re.from_regex ecma2020) "^\+380-\d{2}-\d{3}-\d{2}-\d{2}") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9. ]{3,}$"))))))
(check-sat)
