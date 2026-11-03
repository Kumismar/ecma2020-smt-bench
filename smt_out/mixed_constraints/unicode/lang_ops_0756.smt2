; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<isindex action=javascript:alert(1) type=submit value=click>") (= x "<th draggable=""true"" ondragstart=""alert(1)"">test</th>") (= x "<div id=""99"">XXX<style>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "(?=^.{0,255}$)^[a-zA-Z0-9._%+-]+@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$") (re.diff ((_ re.from_regex ecma2020 u) "^\d{5}") ((_ re.from_regex ecma2020 u) "^((ftp|http|https):\/\/)?(www.)?(?!.*(ftp|http|https|www.))[a-zA-Z0-9_-]+(\.[a-zA-Z]+)+((\/)[\w#]+)*(\/\w+\?[a-zA-Z0-9_]+=\w+(&[a-zA-Z0-9_]+=\w+)*)?$"))))))
(check-sat)
