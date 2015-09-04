# Numerical Processors

![Num Processors](processors-num-en.jpg)

### Expression
This processor makes it possible to write complex expression patterns using field values.

The expression processor can work with both textual content and numerical content.

Literal values can be either explicit literals, such as `"this is some text"`, or `2` as well as field names, such as `price`.

To enter expression mode, tap a `=` in the expression field box. If you do not, the expression will be interpreted as pure textual content. 

In expression mode, strings must be double quoted (`"foo"`). 

The following unary, binary and ternary operators are available:

Operator type | Operators
------------- | ---------
Unary operators | +, -, not, ! (not) , ! (factorial), ^ (power)
Binary operators | +, -, *, /, % (euclidean division), and, &&, or, ||, >, <, >=, <=, == (evaluates to `True` or `False`), & (concatenation of strings, evaluates to a string)
Ternary operators | op1 ? op2 : op3 (conditional statement) 

Examples:

Expression | Result
---------- | ------
1 + 1 | 2
-3 + 1 | -2
3! | 6
2^3 | 8
1 > 2 | False
1 >= 1 | True
1 >= 1 ? 2 : 3 | 2
price * 2 | 24 (if price is a field valued to 12)
"foo" & "," & "bar" | foo,bar

A rich set of functions is also available

Function type | Functions
------------- | ---------
Without operand | now
Single operand | sin, asin, asinh, cos, acos, acosh, tan, atan, atanh, ceil, abs, factorial, floor, exp, log, log10, sqrt, degrees, radians, sigmoid, gamma, round, trunc, touppercase, upper, tolowercase, lower, capitalize_all, capitalize, isupper, islower, isdecimal, isdigit, isnumeric, isalnum, isalpha, random, length, normalize (unicode), dayofweek, year, month, hour, minute, second, microsecond
Two operands | pow, max, min, mod, div, gcd, round, random, contains, endswith, startswith, dayofweek, year, month, hour, minute, second, microsecond, add_seconds, add_minutes, add_hours, add_days, add_months, add_years
Three operands | ljust, rjust, center, replace, datediff

Examples:

Expression | Result
---------- | ------
cos(2 * pi) | 1
log(e) | 1
exp(log(e)) - e | 0
round(2.3) | 2
round(2.7) | 3
ceil(2.3) | 3
floor(2.3) | 2
islower("aBc") | False
lower("aBc") | abc
isalnum("123") | True
capitalize("foo bar") | Foo bar
capitalize_all("foo bar") | Foo Bar
random(10) | 1.80536931404
random(10, 11) | 10.7280438796
ljust("4400", 5, "0") | 44000
rjust("4400", 5, "0") | 04400
center("4400", 6,"0") | 044000
year("2014-06-07") | 2014
hour("2014-06-07 17:00") | 17
hour("2014-06-07 17:00", "Europe/Paris") | 19
replace("abcd", "b", "e") | aecd
datediff("2014-02-28", "2015-02-28", "year") | 1
datediff("2014-02-28", "2015-02-28", "month") | 12
datediff("2014-02-28", "2015-02-28", "day") | 265
datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "hour") | 1
datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "minute") | 60
datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "second") | 3600
startswith("hello', 'he') | True
startswith("hello', 'lo') | False
endswith("hello', 'he') | False
endswith("hello', 'lo') | True
add_months("2014-11-14", "3") | 2015-02-14
