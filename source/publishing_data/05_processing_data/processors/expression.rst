Expression processor
====================

The expression processor is a versatile processor that takes an expression as an argument and outputs its result in a field.

The expression can be composed of:

- identifiers (e.g: a field name like ``column_1`` or a forced field name like ``$column_1``),
- numbers (e.g: ``2`` or ``3.6``),
- textual literals (e.g ``"hello"`` or ``'world'``),
- booleans (e.g: ``true`` or ``false``),
- operators (e.g: ``+``, ``OR``, ``not``, ``<=``),
- keywords (e.g: a mathematical constant like ``pi`` and ``e``),
- functions (e.g: ``now()``, ``sin(number)``, ``startswith("hello', 'he')``).

Getting started
---------------

**Example of a simple addition**

.. localizedimage:: screenshots/processing__expression-sum.png
    :alt: Expression Processor basic sum

The "Result" column, which is a new column created by the processor, contains the result of the sum.

**Example of a mathematical function**

.. localizedimage:: screenshots/processing__expression-function.png
    :alt: Expression Processor function

**Example of a conditional expression**

The idea is to create a new column which values are computed from the values of another column in the dataset. In this case, a new column named "Anomaly Detected ?" is created and filled with "YES" or "NO", depending on whether the value in ``column_1`` is greater than ``5`` or not.

This kind of expression is called a **ternary operator** (``condition ? value if true : value if false``) and will be detailed below.

.. localizedimage:: screenshots/processing__expression-condition.png
    :alt: Expression Processor conditional expression

Setting the processor
---------------------

To set the parameters of the Expression processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Expression
    * Expression pattern
    * yes
  * * Output field
    * Field where the expression will be applied. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes


Building an expression
----------------------

An expression is an instruction for the processor to perform an operation and to return the value in a new or existing column of the dataset.

These expression look like what we call formulas in a spreadsheet software, the main difference being that instead of referencing cells (e.g: ``A1 + B2``), the processor can perform operation with the values of given columns (e.g: ``column_1 + column_2``).

Like in a formula, expressions can also contain various elements like:

- numbers (e.g: ``2`` or ``3.6``),
- textual literals (e.g ``"hello"`` or ``'world'``),
- booleans (e.g: ``true`` or ``false``),
- operators (e.g: ``+``, ``OR``, ``not``, ``<=``),
- keywords (e.g: a mathematical constant like ``pi`` and ``e``),
- functions (e.g: ``now()``, ``sin(number)``, ``startswith("hello', 'he')``).

.. admonition:: Prerequisite
   :class: important

   The expression processor makes more sense in evaluation mode (which means "compute and return the result of the expression"), activated by starting the expression with an equal sign (``=``). Otherwise, the processor will not evaluate the expression, and simply put it as is in the output field.

Operators
~~~~~~~~~

Operators are symbols that behave generally like functions but are used with a more natural syntax.

The expression processor supports 3 kinds of operators, depending of the number of parameters around them:

- **unary operators** can be used as prefixes or suffixes to alter the value of 1 expression,
- **binary operators** can be arithmetic operators to perform a calculus between 2 expression, or boolean operators to compare the result of 2 expressions,
- the **ternary operator**, to convert an conditional expression to either 1 of 2 possible results.

.. list-table::
   :header-rows: 1

   * * Operator type
     * Operators
   * * Unary operators
     * +, -, not, ! (not) , ! (factorial), ^ (power)
   * * Binary operators
     * +, -, ``*``, /, % (euclidean division), and, &&, or, ||, >, <, >=, <=, ==, != (evaluates to ``True`` or ``False``), &
       (concatenation of strings, evaluates to a string)
   * * Ternary operators
     * op1 ? op2 : op3 (conditional statement). Please note that op3 is optional, so you can write op1 ? op2.

In the table below are listed the available functions:

.. list-table::
   :header-rows: 1

   * * Function type
     * Functions
   * * Without operand
     * now
   * * Single operand
     * abs, acos, acosh, asin, asinh, atan, atanh, capitalize, capitalize_all, ceil, cos, day, dayofweek, degrees, empty, exp, factorial, floor, fromtimestamp, gamma, hour, isalnum, isalpha, isdecimal, isdigit, islower, isnumeric, isupper, length, log, log10, lower, minute, month, normalize, quarter, quartertodaterange, radians, random, round, second, sigmoid, sin, sqrt, tan, tolowercase, touppercase, trunc, upper, week, year
   * * Two operands
     * add_days, add_hours, add_minutes, add_months, add_seconds, add_years, contains, day, dayofweek, distance, div, endswith, gcd, geopoint2d_towgs84, geoshape_towgs84, hour, match, max, microsecond, min, minute, mod, month, pow, quarter, quartertodaterange, random, round, second, startswith, substring, week, year
   * * Three operands
     * center, datediff, ljust, replace, rjust, substring


Examples
--------

.. admonition:: Note
   :class: note

   Keep in mind that for each expression, the examples are presented with actual numbers, but they can be replaced with the processed dataset's fields technical identifiers.

.. list-table::
   :header-rows: 1

   * * Description
     * Example
     * Result
   * * Simple addition
     * 1 + 1
     * 2
   * * Addition with a negative number
     * -3 + .1
     * -2.9
   * * Product with a field
     * price * 2
     * 24 (if price is a field valued to 12)
   * * Factorial
     * 3!
     * 6
   * * Power
     * 2^3
     * 8
   * * Greater than: true or false
     * 1 > 2
     * False
   * * Greater or equal: true or false
     * 1 >= 1
     * True
   * * Ternary operation
     * 1 >= 1 ? 2 : 3
     * 2
   * * String concatenation
     * "foo" & "," & "bar"
     * foo,bar
   * * Cosinus
     * cos(2 * pi)
     * 1
   * * Logarithm
     * log(e)
     * 1
   * * Exponential
     * exp(4)
     * 54,598
   * * Rounding
     * round(2.3)
     * 2
   * * Rounding
     * round(2.7)
     * 3
   * * Ceiling
     * ceil(2.3)
     * 3
   * * Flooring
     * floor(2.3)
     * 2
   * * Case checking: true or false
     * islower("aBc")
     * False
   * * Lowcasing
     * lower("aBc")
     * abc
   * * Alphanumeric: true or false
     * isalnum("123")
     * True
   * * Capitalize
     * capitalize("foo bar")
     * Foo bar
   * * Capitalize all words
     * capitalize_all("foo bar")
     * Foo Bar
   * * Random number generator
     * random(10)
     * 1.80536931404
   * * Random number generator, in intervals
     * random(10, 11)
     * 10.7280438796
   * * Right padding
     * ljust("4400", 5, "0")
     * 44000
   * * Left padding
     * rjust("4400", 5, "0")
     * 04400
   * * Left and right padding
     * center("4400", 6,"0")
     * 044000
   * * Extract year from date
     * year("2014-06-07")
     * 2014
   * * Extract hour from datetime
     * hour("2014-06-07 17:00")
     * 17
   * * Extract hour from datetime with timezone
     * hour("2014-06-07 17:00", "Europe/Paris")
     * 19
   * * Replace text in string
     * replace("abcd", "b", "e")
     * aecd
   * * Count years between 2 dates
     * datediff("2014-02-28", "2015-02-28", "year")
     * 1
   * * Count months between 2 dates
     * datediff("2014-02-28", "2015-02-28", "month")
     * 12
   * * Count days between 2 dates
     * datediff("2014-02-28", "2015-02-28", "day")
     * 365
   * * Count hours between 2 datetimes
     * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "hour")
     * 1
   * * Count minutes between 2 datetimes
     * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "minute")
     * 60
   * * Count seconds between 2 datetimes
     * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "second")
     * 3600
   * * Prefix matching: true or false
     * startswith("hello', 'he')
     * True
   * * Prefix matching: true or false
     * startswith("hello', 'lo')
     * False
   * * Suffix matching: true or false
     * endswith("hello', 'he')
     * False
   * * Suffix matching: true or false
     * endswith("hello', 'lo')
     * True
   * * Add months
     * add_months("2014-11-14", "3")
     * 2015-02-14
   * * Substring matching: true or false
     * contains("hello", "l")
     * True
   * * Substring matching: true or false
     * contains("hello", "A")
     * False
   * * Empty: true or false
     * empty("")
     * True
   * * Empty: true or false
     * empty("hello")
     * False
