Expression processor
====================

This processor is a versatile processor that takes an expression as an argument and outputs its result in a field.

The expression can be composed of:

- **identifiers**,
- **literals** (numbers, textual literals, booleans and keywords),
- **operators**,
- **functions**.

.. admonition:: Prerequisite
   :class: important

   The Expression processor makes more sense in evaluation mode (which means "compute and return the result of the expression"), activated by starting the expression with an equal sign (``=``). Otherwise, the processor will not evaluate the expression, and simply put it as is in the output field.

   The starting equal sign (``=``) will be omitted through all the following examples.


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

These expressions look like what we call "formulas" in a spreadsheet software. The main difference is that instead of referencing cells (e.g: ``A1 + B2``), the processor can perform operations with the values of given columns (e.g: ``column_1 + column_2``).

Like in a formula, expressions can be any combination of various elements. The Expression processor supports the following elements:

- identifiers (e.g: a field name like ``column_1`` or a forced field name like ``$column_1``),
- literals:

    - numbers (e.g: ``2`` or ``3.6``),
    - textual literals (e.g ``"hello"`` or ``'world'``),
    - booleans (e.g: ``'true'`` or ``'false'``),
    - keywords (e.g: a mathematical constant like ``pi`` and ``e``),

- operators (e.g: ``+``, ``OR``, ``not``, ``<=``),
- functions (e.g: ``now()``, ``sin(number)``, ``startswith("hello', 'he')``).

Identifiers
~~~~~~~~~~~

The main feature of the Expression processor is the ability to perform operations on a record's columns. The technical identifier (or field name) of a column can be used in any expression to access the value of this field for the current record. This technical identifier can be found in the :ref:`field options<configuringoptions>`, as the ``Name`` of this field.

Examples:

- ``column_1`` to access a field named ``column_1`` (and maybe labeled "Column 1")
- ``name_en`` to access a field named ``name_en`` (and maybe labeled "Name (EN)")

.. admonition:: Important
   :class: important

   In some cases, the field name can be ambiguous, for example if it is a number, if it starts with a number or if it is a reserved keyword like "pi" (the mathematical constant PI) or "e" (the mathematical constant Euler's number).

   To force the Expression processor to evaluate an identifier as a field name, it is possible to prefix any identifier with the dollar sign (``$``). The dollar sign can be used for any field name, but it is only mandatory for ambiguous field names.

Examples:

- ``$column_1`` to access a field named ``column_1`` (and maybe labeled "Column 1")
- ``$name_en`` to access a field named ``name_en`` (and maybe labeled "Name (EN)")
- ``$20_to_25_yo`` to access a field named ``20_to_25_yo`` (and maybe labeled "20 to 25 years old")
- ``$33`` to access a field named ``33``
- ``$pi`` to access a field named ``pi``

In all the following examples, any number or textual literal can be replaced by a field name holding values of the same type. The Expression processor will extract the value for the specified column and perform the required operation with it.

Several fields (or even the same field several times) can be used at the same time in an expression.

Literals
^^^^^^^^

Literals like **numbers**, **textual literals** (single or double quoted), **booleans** and **keywords** can be used in any expression.

Examples:

- ``3``
- ``2.5``
- ``"Hello"`` or ``'Hello'``
- ``'A bigger sentence'``
- ``'true'`` or ``'false'``
- ``pi``, ``PI`` or ``Pi``
- ``e`` or ``E``

Operators
~~~~~~~~~

Operators are symbols that behave generally like functions but are used with a more natural syntax.

The Expression processor supports 3 kinds of operators, depending on the number of parameters around them:

- **unary operators** can be used as prefixes or suffixes to alter the value of 1 expression,
- **binary operators** can be arithmetic operators to perform a calculus between 2 expressions, or boolean operators to compare the result of 2 expressions,
- the **ternary operator**, to convert a conditional expression to either 1 of 2 possible results.

.. admonition:: Note
   :class: note

   Operator precedence works in the following order: factorial, exponential, sign, euclidian division, function evaluation, multiplication/division, addition/substraction, concatenation, not, comparison, and, or, ternary operator, ternary operator without else.

Unary operators
^^^^^^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Operator
     * Description
     * Example
   * * ``-``
     * Prefix that negates the following value
     * ``- 4``, ``- [expression]``
   * * ``not``, ``!`` (not)
     * Boolean operator that inverts the following condition
     * * ``not('true')`` or  ``!('true')`` is ``false``
       * ``not(4 > 5)`` is ``true``
       * ``!(5 <= 10)`` is ``false``
   * * ``!`` (factorial)
     * Suffix that computes the factorial of an expression
     * ``3!`` returns ``1*2*3``

Binary operators
^^^^^^^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Operator
     * Description
     * Example
   * * ``+``, ``-``, ``*``, ``/``, ``%``, ``//``, ``^``
     * Arithmetic operators: add, subtract, multiply, divide, modulo, euclidian division, power
     * * ``2 + 3`` returns ``5``
       * ``5 - 8`` returns ``-3``
       * ``9 * 3`` returns ``27``
       * ``15 / 6`` returns ``2.5``
       * ``15 % 6`` returns ``3``
       * ``15 // 6`` returns ``2``
       * ``2 ^ 3`` returns ``8``
       * ``column_1 + column2``
   * * ``and``, ``&&``, ``or``, ``||`` (return a boolean)
     * Boolean operators: and, or
     * * ``'true' and 'true'`` is ``true``
       * ``'true' && 'false'`` is ``false``
       * ``'true' or 'false'`` is ``true``
       * ``'false' || 'false'`` is ``false``
   * * ``>``, ``<``, ``>=``, ``<=``, ``==``, ``!=``
     * Comparison operators: greater than, lower than, greater or equal to, lower or equal to, equal to, different than return a boolean
     * * ``3 < 4`` is ``true``
       * ``5 >= 10`` is ``false``
   * * ``&``
     * String concatenation operator
     * ``'Hello' & ' world'`` returns ``'Hello world'``

Ternary operator
^^^^^^^^^^^^^^^^

The expression ``[condition] ? [result if true] : [result if false]`` is called the ternary operator, and allows to return different results depending on a condition.

.. admonition:: Note
   :class: note

   A ternary expression can be read as "if [condition] then [result if true] else [result if false]".

Examples:

- ``'true' ? 'hello' : 'goodbye'`` returns ``'hello'``
- ``'false' ? 'hello' : 'goodbye'`` returns ``'goodbye'``
- ``4 > 3 ? '4 is bigger' : '3 is bigger'`` returns ``'4 is bigger'``
- ``10 <= 9 ? '9 is bigger' : '10 is bigger'`` returns ``'10 is bigger'``

The last part of the ternary operator is optional, which means that the following expressions are valid:

- ``'true' ? 'hello'`` returns ``'hello'``
- ``'false' ? 'hello'`` returns an empty result

Functions
~~~~~~~~~

Functions are used to perform more advanced operations in an expression. They can take 0 or more parameters, and apply transformations on them such as:

- text handling,
- mathematical functions,
- date and time handling.

Text handling
^^^^^^^^^^^^^

**Boolean functions**

.. list-table::
   :header-rows: 1

   * * Function
     * Description
     * Example
   * * ``isalpha([text])``
     * True if text only contains letters
     *
   * * ``isnumeric([text])``
     * True if text only contains numbers
     *
   * * ``isalnum([text])``
     * True if text only contains letters or numbers
     *
   * * ``isdecimal([text])``
     * True if text is a valid decimal number
     *
   * * ``isdigit([text])``
     * True if text is a single digit
     *
   * * ``islower([text])``
     * True if text is lowercase
     *
   * * ``isupper([text])``
     * True if text is uppercase
     *
   * * ``empty([text])``
     * True if text is empty
     *
   * * ``contains([text],[text])``, ``startswith([text],[text])``, ``endswith([text],[text])``
     * True if text (1st argument) contains, starts with or ends with text (2nd argument)
     * * ``contains("hello", "l")`` returns ``True``
       * ``startswith("hello", 'he')`` returns ``True``
       * ``endswith("hello", 'he')`` returns ``False``


**Processing functions**

.. list-table::
   :header-rows: 1

   * * Function
     * Description
     * Example
   * * ``length([text])``
     * Return the length of the text
     * ``length('hello')`` returns ``5``
   * * ``lower([text])``, ``upper([text])``
     * Convert text to lowercase, to uppercase
     *
   * * ``capitalize([text])``, ``capitalize_all([text])``
     * Capitalize the first letter of the text, the first letter of each word
     *
   * * * ``ljust([text],[numeric],[text])``
       * ``rjust([text],[numeric],[text])``
       * ``center([text],[numeric],[text])``
     * Left, right and center justify a text (1st argument), until it reaches [numeric] characters with another text (3rd argument)
     * * ``ljust("4400", 5, "0")`` returns ``"44000"``
       * ``rjust("4400", 5, "0")`` returns ``"04400"``
       * ``center("4400", 6,"0")`` returns ``"044000"``
   * * ``normalize([text])``
     * Convert a text to its ascii representation
     * ``normalize("你好")`` returns ``"ni hao"``
   * * ``substring([text],[numeric],[numeric])``
     * Extract a substring of text, starting at index indicated by 2nd argument and of a length indicated by 3rd argument (optional)
     * ``substring('hello', 1, 3)`` returns ``"ell"``
   * * ``count([text], [text])``
     * Return the number of times the 2nd argument is found in the 1st argument
     * ``count("Hello world", "l")`` returns ``3``
   * * * ``left([text],[numeric])``
       * ``right([text],[numeric])``
       * ``mid([text],[numeric])``
     * Extract a part of text (1st argument), from the left, right or the middle; the size of the extract is given by the 2nd argument for ``left`` and ``right``, by the 2nd and 3rd arguments for ``mid``
     * * ``left("hello", 2)`` returns ``"he"``
       * ``right("hello", 3)`` returns ``"lo"``
       * ``mid("hello", 2, 3)`` returns ``"ell"``

Mathematical functions
^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Function
     * Description
     * Example
   * * ``abs([numeric])``
     * Absolute value
     * ``abs(-4)`` returns ``4``
   * * ``sqrt([numeric])``
     * Square root
     *
   * * ``floor([numeric])``, ``ceil([numeric])``
     * Floor and ceiling functions
     * * ``floor(4.6)`` returns ``4``
       * ``ceil(3.3)`` returns ``4``
   * * ``max([numeric],[numeric])``, ``min([numeric],[numeric])``
     * Max and min functions
     *
   * * ``round([numeric])``
     * Return the nearest integer
     * * ``round(4.6)`` returns ``5``
       * ``round(3.3)`` returns ``4``
   * * ``random([numeric])``
     * Random number generator (between 0 and [numeric])
     * ``random(10)`` returns for example ``7.27846540481``
   * * ``pow([numeric], [numeric])``
     * Power function
     * ``pow(2, 3)`` returns ``8``
   * * ``exp([numeric])``, ``log([numeric])``, ``log10([numeric])``
     * Exponential, logarithm and base 10 logarithm functions
     * ``exp(1)`` returns ``E``
   * * ``radians([numeric])``
     * Convert an angle from degrees to radians
     * ``radians(180)`` returns ``PI``
   * * ``degrees([numeric])``
     * Convert an angle from radians to degrees
     * ``degrees(PI)`` returns ``180``
   * * ``cos([numeric])``, ``cosh([numeric])``, ``sin([numeric])``, ``sinh([numeric])``, ``tan([numeric])``, ``tanh([numeric])``
     * Cosine, hyperbolic cosine, sine, hyperbolic sine, tangent, hyperbolic tangent (in radians)
     * ``sin(PI)`` returns ``0``
   * * ``acos([numeric])``, ``acosh([numeric])``, ``asin([numeric])``, ``asinh([numeric])``, ``atan([numeric])``, ``atanh([numeric])``
     * Inverse cosine, inverse cosine hyberbolical, inverse sine, inverse sine hyperbolical, inverse tangent, inverse tangent hyperbolical (in radians)
     * ``acos(0)`` returns ``PI/2``

Date and time handling
^^^^^^^^^^^^^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Function
     * Description
     * Example
   * * ``year([datetime])``, ``quarter([datetime])``, ``month([datetime])``, ``day([datetime])``, ``dayofweek([datetime])``, ``hour([datetime])``, ``minute([datetime])``, ``second([datetime])``
     * Extract the year, quarter, month, day, day of week, hours, minutes, seconds from a datetime
     * * ``year("2014-06-07")`` returns ``2014``
       * ``hour("2014-06-07 17:00")`` returns ``17``
       * ``hour("2014-06-07 17:00", "Europe/Paris")`` returns ``19``
   * * ``add_years([datetime],[numeric])``, ``add_months([datetime],[numeric])``, ``add_days([datetime],[numeric])``, ``add_hours([datetime],[numeric])``, ``add_minutes([datetime],[numeric])``, ``add_seconds([datetime],[numeric])``
     * Add years, months, days, hours, minutes, seconds to a datetime
     * ``add_months("2014-11-14", "3")`` returns ``2015-02-14``
   * * ``fromtimestamp([numeric])``
     * Convert a timestamp to a datetime
     *
   * * ``quartertodaterange([numeric])``
     * Convert a quarter (e.g: "2014Q2", "2019q1") to a date range
     * ``quartertodaterange("2014Q2")`` returns ``"2014-04-01 / 2014-06-30"``
   * * ``datediff([datetime], [datetime], [unit])``
     * Count the number of units between the two datetimes. ``[unit]`` can be "year", "month", "day", "hour", "minute", "second".
     * * ``datediff("2014-02-28", "2015-02-28", "month")`` returns ``12``
       * ``datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "minute")`` returns ``60``
