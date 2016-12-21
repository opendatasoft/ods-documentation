Processing datasets
===================

Generic processors
------------------

Add a Field
~~~~~~~~~~~

Manually add an empty field to the dataset. It can be filled by other processors.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * The field name
    * String
    * yes

Copy a Field
~~~~~~~~~~~~

Copy a field value into another field.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Mandatory
  * * Field to copy
    * Field
    * yes
  * * New field
    * Field
    * yes

Delete record by ID
~~~~~~~~~~~~~~~~~~~

Send a delete order to remove an existing record of the dataset based on the unique ID.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    * Field that contains the value to test
    * Field
    * yes
    *
  * * Value to skip
    * Value that means the record must be deleted
    * Expression
    * no
    * None
  * * Exact match
    * Unchecked: the field must contain the value. Checked: must be an exact match.
    * Boolean
    * no
    * True

Skip Records
~~~~~~~~~~~~

Skip all records for which the specified field matches the specified value.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    * Name of the field
    * Field
    * yes
    *
  * * Value to skip
    * Value that means the record must be deleted
    * String or Expression (if the value starts with an '=')
    * no
    * None
  * * Exact match
    * Unchecked: the field must contain the value. Checked: must be an exact match.
    * Boolean
    * no
    * Checked


Transpose Fields
~~~~~~~~~~~~~~~~

This processor makes it possible to transform field names into field values.

Let's take a simple example, with a dataset containing for a couple of countries the evolution of the number of inhabitants from 2020 to 2030.

The dataset initially looks like this:

.. list-table::
   :header-rows: 1

   * * Country name
     * 2020
     * 2030
     * 2050
   * * France
     * 70 000 000
     * 80 000 000
     * 100 000 000
   * * UK
     * 65 000 000
     * 70 000 000
     * 90 000 000
   * * USA
     * 350 000 000
     * 400 000 000
     * 450 000 000

Publishing this dataset as is would make it difficult to draw meaningful visualizations for instance.

Let's have a look at an alternative way to represent this dataset.

.. list-table::
   :header-rows: 1

   * * Country Name
     * Year
     * Inhabitants
   * * France
     * 2020
     * 70 000 000
   * * UK
     * 2020
     * 65 000 000
   * * USA
     * 2020
     * 350 000 000
   * * France
     * 2030
     * 80 000 000
   * * UK
     * 2030
     * 70 000 000
   * * USA
     * 2030
     * 400 000 000
   * * France
     * 2050
     * 100 000 000
   * * UK
     * 2050
     * 90 000 000
   * * USA
     * 2050
     * 450 000 000

With this representation, it becomes easy to build subsets of the dataset using facets based filtering mechanism.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Fixed fields
    * List of fields that must be kept as is. (e.g *Country Name*)
    * List
    * yes
    *
  * * Invert fixed fields
    *
    * Boolean
    * no
    *
  * * Label for title column
    * Label of the new column containing the names of fields that have been transposed (e.g *Year*)
    * String
    * yes
    *
  * * Label for value column
    * Label of the new column containing the former cell values (e.g *Inhabitants*)
    * String
    * yes
    * value
  * * One line
    * Don't split records in several lines for each possible value, but use a separator to put all possible values in the value column.
    * Boolean
    * no
    *
  * * Separator
    * The separator used by the "One line" option
    * String
    * no
    * /


Expression
~~~~~~~~~~

This processor makes it possible to write complex expression patterns using field values.

It works similarly as formulas in a spreadsheet software, except instead of referencing cells (i.e. A1 + B2), you have to reference columns of the dataset (i.e. column_1 + column_2)

.. ifconfig:: language == 'en'

  .. figure:: processing__expression-sum-en.png
    :alt: Expression Processor basic sum

    Example of a basic sum with the Expression processor. The "Result" column contains the result of the sum (this column was not in the data source).

.. ifconfig:: language == 'fr'

  .. figure:: processing__expression-sum-fr.png
    :alt: Expression Processor basic sum

    Example of a basic sum with the Expression processor. The "Result" column contains the result of the sum (this column was not in the data source).

Be careful to use the **technical name** instead of the column label in the expression. This technical name can be found by clicking on the gears icon.

.. ifconfig:: language == 'en'

  .. figure:: processing__expression-technicalname-en.png
    :alt: Expression Processor technical name

    Technical name of a column

.. ifconfig:: language == 'fr'

  .. figure:: processing__expression-technicalname-fr.png
    :alt: Expression Processor technical name

    Technical name of a column

Here are some common use cases :

- Numerical operations (like the sum example above)
- Mathematical or text function (round, log, cosinus, change text to upper case, ...)

.. ifconfig:: language == 'en'

  .. figure:: processing__expression-function-en.png
    :alt: Expression Processor function

    Example of a mathematical function using the Expression processor

.. ifconfig:: language == 'fr'

  .. figure:: processing__expression-function-fr.png
    :alt: Expression Processor function

    Example of a mathematical function using the Expression processor

- Conditional expression : the idea is to create a new column (e.g for filtering) which values depends on condition on values of another column of the dataset. For example, a new column named "Anomaly Detected ?" containing YES/NO, depending of values of another column being in a certain range (see screenshot below)

.. ifconfig:: language == 'en'

  .. figure:: processing__expression-condition-en.png
    :alt: Expression Processor conditional expression

    Example of a conditional expression using the Expression processor, with the creation of the "Anomaly Detected ?" (which was not initially present in the original data source). The syntax is ``=expression ? value if the expression if true : value if false``

.. ifconfig:: language == 'fr'

  .. figure:: processing__expression-condition-fr.png
    :alt: Expression Processor conditional expression

    Example of a conditional expression using the Expression processor, with the creation of the "Anomaly Detected ?" (which was not initially present in the original data source). The syntax is ``=expression ? value if the expression if true : value if false``

The expression processor can work with both textual content and numerical content.

Literal values can be either explicit literals, such as ``"this is some text"``, or ``2`` as well as field names,
such as ``price``.

To enter expression mode, tap a ``=`` in the expression field box. If you do not, the expression will be interpreted as
pure textual content.

In expression mode, strings must be double quoted (``"foo"``).

The following unary, binary and ternary operators are available:

.. list-table::
   :header-rows: 1

   * * Operator type
     * Operators
   * * Unary operators
     * +, -, not, ! (not) , ! (factorial), ^ (power)
   * * Binary operators
     * +, -, ``*``, /, % (euclidean division), and, &&, or, ||, >, <, >=, <=, == (evaluates to ``True`` or ``False``), &
       (concatenation of strings, evaluates to a string)
   * * Ternary operators
     * op1 ? op2 : op3 (conditional statement)

Examples:

.. list-table::
   :header-rows: 1

   * * Expression
     * Result
   * * 1 + 1
     * 2
   * * -3 + 1
     * -2
   * * 3!
     * 6
   * * 2^3
     * 8
   * * 1 > 2
     * False
   * * 1 >= 1
     * True
   * * 1 >= 1 ? 2 : 3
     * 2
   * * price * 2
     * 24 (if price is a field valued to 12)
   * * "foo" & "," & "bar"
     * foo,bar

A rich set of functions is also available

.. list-table::
   :header-rows: 1

   * * Function type
     * Functions
   * * Without operand
     * now
   * * Single operand
     * abs, acos, acosh, asin, asinh, atan, atanh, capitalize, capitalize_all, ceil, cos, day, dayofweek, degrees, empty, exp, factorial, floor, fromtimestamp, gamma, hour, isalnum, isalpha, isdecimal, isdigit, islower, isnumeric, isupper, length, log, log10, lower, minute, month, normalize, radians, random, round, second, sigmoid, sin, sqrt, tan, tolowercase, touppercase, trunc, upper, year
   * * Two operands
     * add_days, add_hours, add_minutes, add_months, add_seconds, add_years, contains, day, dayofweek, distance, div, endswith, gcd, geopoint2d_towgs84, geoshape_towgs84, hour, match, max, microsecond, min, minute, mod, month, pow, random, round, second, startswith, substring, year
   * * Three operands
     * center, datediff, ljust, replace, rjust, substring

Examples:

.. list-table::
   :header-rows: 1

   * * Expression
     * Result
   * * cos(2 * pi)
     * 1
   * * log(e)
     * 1
   * * exp(log(e)) - e
     * 0
   * * round(2.3)
     * 2
   * * round(2.7)
     * 3
   * * ceil(2.3)
     * 3
   * * floor(2.3)
     * 2
   * * islower("aBc")
     * False
   * * lower("aBc")
     * abc
   * * isalnum("123")
     * True
   * * capitalize("foo bar")
     * Foo bar
   * * capitalize_all("foo bar")
     * Foo Bar
   * * random(10)
     * 1.80536931404
   * * random(10, 11)
     * 10.7280438796
   * * ljust("4400", 5, "0")
     * 44000
   * * rjust("4400", 5, "0")
     * 04400
   * * center("4400", 6,"0")
     * 044000
   * * year("2014-06-07")
     * 2014
   * * hour("2014-06-07 17:00")
     * 17
   * * hour("2014-06-07 17:00", "Europe/Paris")
     * 19
   * * replace("abcd", "b", "e")
     * aecd
   * * datediff("2014-02-28", "2015-02-28", "year")
     * 1
   * * datediff("2014-02-28", "2015-02-28", "month")
     * 12
   * * datediff("2014-02-28", "2015-02-28", "day")
     * 265
   * * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "hour")
     * 1
   * * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "minute")
     * 60
   * * datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "second")
     * 3600
   * * startswith("hello', 'he')
     * True
   * * startswith("hello', 'lo')
     * False
   * * endswith("hello', 'he')
     * False
   * * endswith("hello', 'lo')
     * True
   * * add_months("2014-11-14", "3")
     * 2015-02-14
   * * contains("hello", "l")
     * True
   * * contains("hello", "A")
     * False
   * * empty("")
     * True
   * * empty("hello")
     * False

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Mandatory
  * * Expression
    * Expression
    * yes
  * * Output field
    * Field
    * yes

Date processors
---------------

Normalize Date
~~~~~~~~~~~~~~~

Date normalization is one of the most commonly used processors. It allows you to parse a date in a format that would otherwise not be understood by the platform.

The most common common case is when dates are in the DD/MM/YYYY format : by default the platform will parse dates using the MM/DD/YYYY format (US). For example January 10 2016 written 10/01/2016 (French format) will be interpreted as October 1 2016.

The Date Normalization processor can then be used to correct this problem, by simply specifying the date format pattern to use in the **Date format** parameter. In this case, the format we want is DD/MM/YYYY, which will be written **%d/%m/%Y** (see below for more details on patterns) :

.. ifconfig:: language == 'en'

  .. figure:: processing__date_norm-1--en.png
    :alt: Date normalization processor 1/2

    By default, 12/04/2016 and 03/10/2016 are interpreted respectively as December 4 2016 and March 10 2016

  .. figure:: processing__date_norm-2--en.png
    :alt: Date normalization processor 2/2

    With the Date normalization processor and the pattern %d/%m/%Y (DD/MM/YYYY), the dates are interpreted as April 12 2016 and October 3 2016

.. ifconfig:: language == 'fr'

  .. figure:: processing__date_norm-1--fr.png
    :alt: Date normalization processor 1/2

    By default, 12/04/2016 and 03/10/2016 are interpreted respectively as December 4 2016 and March 10 2016

  .. figure:: processing__date_norm-2--fr.png
    :alt: Date normalization processor 2/2

    With the Date normalization processor and the pattern %d/%m/%Y (DD/MM/YYYY), the dates are interpreted as April 12 2016 and October 3 2016

In general, it is preferred to have date in the unambiguous format YYYY-MM-DD to avoid these problems (note that Excel files are usually not affected by these issues).

A pattern is an arbitrary string containing one of the following directives.

.. list-table::
   :header-rows: 1

   * * Directive
     * Meaning
     * Example
   * * %a
     * Weekday as locale’s abbreviated name.
     * Sun, Mon, ..., Sat
   * * %A
     * Weekday as locale’s full name.
     * Sunday, Monday, ..., Saturday
   * * %w
     * Weekday as a decimal number, where 0 is Sunday and 6 is Saturday.
     * 0, 1, ..., 6
   * * %d
     * Day of the month as a zero-padded decimal number.
     * 01, 02, ..., 31
   * * %b
     * Month as locale’s abbreviated name.
     * Jan, Feb, ..., Dec
   * * %B
     * Month as locale’s full name.
     * January, February, ..., December
   * * %m
     * Month as a zero-padded decimal number.
     * 01, 02, ..., 12
   * * %y
     * Year without century as a zero-padded decimal number.
     * 00, 01, ..., 99
   * * %Y
     * Year with century as a decimal number.
     * 1970, 1988, 2001, 2013
   * * %H
     * Hour (24-hour clock) as a zero-padded decimal number.
     * 00, 01, ..., 23
   * * %I
     * Hour (12-hour clock) as a zero-padded decimal number.
     * 01, 02, ..., 12
   * * %p
     * Locale’s equivalent of either AM or PM.
     * AM, PM
   * * %M
     * Minute as a zero-padded decimal number.
     * 00, 01, ..., 59
   * * %S
     * Second as a zero-padded decimal number.
     * 00, 01, ..., 59
   * * %f
     * Microsecond as a decimal number, zero-padded on the left.
     * 000000, 000001, ..., 999999
   * * %j
     * Day of the year as a zero-padded decimal number.
     * 001, 002, ..., 366
   * * %U
     * Week number of the year (Sunday as the first day of the week) as a zero padded decimal number. All days in a new year preceding the first Sunday are considered to be in week 0.
     * 00, 01, ..., 53
   * * %W
     * Week number of the year (Monday as the first day of the week) as a decimal number. All days in a new year preceding the first Monday are considered to be in week 0.
     * 00, 01, ..., 53

For the directives %a, %A, %b, %B and %p, we only support representations of their values in the locale *en_US*.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * Field containing the date
    * Field
    * yes
  * * Date format
    *
    * String
    * yes

Set Timezone
~~~~~~~~~~~~

This processor can be used to force the timezone of a datetime field. This might be useful when, for instance, the source outputs timestamps with no timezone indication.

For example, if a dataset contains a date field with an absent or incorrect timezone, this processor can force the timezone to "UTC", or "Europe/Paris".

"2016-12-08T08:51:53Z" (timezone is incorrectly set to UTC) would become "2016-12-08T08:51:53+01:00" if you set "Europe/Paris" as a timezone, or "2016-12-08T08:51:53" (timezone is not set) would become "2016-12-08T08:51:53+00:00" if you set "UTC" as a timezone.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    * Field containing the date
    * Field
    * yes
    *
  * * Timezone
    *
    * String
    * yes
    *

Geographical processors
-----------------------

Country Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a country ISO code to produce a geo coordinate.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Country iso code
    * The field containing the country ISO code
    * Field
    * yes
  * * Output field
    * Name of the field that will contain the WGS84 coordinate
    * Field
    * yes

Coordinates system conversion
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor converts a degrees, minutes, seconds geo coordinate to a standard geo coordinate.

The following formats can be converted:

- 48° 51′ 24″ Nord2° 21′ 07″ Est
- 48° 51′ 24″N 2° 21′ 07″ E
- 48° 51′ 24″ 2° 21′ 07″
- +48° 51′ 24″ +2° 21′ 07″
- N48° 51′ 24″ E2° 21′ 07″
- 48°;2°

The signs can be:

.. list-table::
   :header-rows: 1

   * * Type
     * Signs
   * * North/South
     * +, -, N, S, Nord, North, Sud, South
   * * East/West
     * +, -, E, O, W, Est, East, Ouest, West
   * * Coordinate separator
     * ' ', ';', '/'
   * * Degree mark
     * '°', '^', '*'
   * * Minute mark
     * "'", '′'
   * * Second mark
     * '"', '″'

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Coordinates
    * Field that contains the coordinates
    * Field
    * yes
  * * Output field
    * Name of the field that will contain the WGS84 coordinates
    * Field
    * yes

Compute Geo distance
~~~~~~~~~~~~~~~~~~~~

This processor computes the distance between two coordinates.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Coordinates A
    *
    * Field
    * yes
  * * Coordinates B
    *
    * Field
    * yes
  * * Output field
    * Field that will contain the computed distance
    * Field
    * yes

Geomasking
~~~~~~~~~~

Provides privacy protection by approximating a geographical location within a specific radius.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * Field containing the coordinates you want to approximate
    * Field
    * yes
  * * Minimum distance (in meters)
    *
    * Double
    * no
  * * Maximum distance (in meters)
    *
    * Double
    * no

INSEE Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a French INSEE code to produce a geo coordinate.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Insee code
    * Field that contains an INSEE code
    * Field
    * yes
  * * Output field
    * Field that will contain the produced WSG84 coordinates
    * Field
    * yes

IP Address to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode an IP address. It uses the `GeoIP <http://geolite.maxmind.com>`_ database.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * IP address
    * Field that contains the IP address
    * Field
    * yes
  * * Output field
    * Field that will contain the produced WSG84 coordinates
    * Field
    * yes

Zip Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a French postal code to produce a geo coordinate.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Postal code
    * Field that contains a French postal code
    * Field
    * yes
  * * output_field
    * Field that will contain the produces WSG84 coordinates
    * Field
    * yes

Simplify Geo Shape
~~~~~~~~~~~~~~~~~~

Simplify a geo shape to reduce processing time and dataset size.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Mandatory
  * * Tolerance (simplification level)
    * Double
    * yes

Normalize Projection Reference
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor can be used to handle a **Geo Point 2D** with a projection system different from `WGS84 <http://en.wikipedia.org/wiki/WGS_84>`_ field. It takes as a parameter the name of the field as well as the `EPSG <http://spatialreference.org/ref/epsg/>`_ code of the source coordinates system. The field's value is replaced with its WGS84 representation.

For instance, if you set the EPSG code to ``27572``, the processor will consider that the original geo field contains coordinates expressed in `Lambert Zone II <http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/>`_.

Note that the input must be expressed with the same logic as a WGS84 geo coordinate: ``Y,X``.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    * Field that will be normalized
    * Field
    * yes
    *
  * * Source epsg code
    *
    * String
    * yes
    * 4326

Geocode with Google
~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode full text addresses by using the Google geocoding API. You need to possess a Google API key to do so.

Geocode with ArcGIS
~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode full text addresses by using the ArcGIS geocoding API. You need to possess an ArcGIS API key to do so.

Retrieve Administrative Divisions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a **Geo Point 2D** to retrieve information (name, code and **Geo Shapes**) of administrative divisions. You need to choose an administrative level between 1 and 7. The available administrative divisions are referenced in the table below.

This processor is not activated by default. Please contact the OpenDataSoft support team if you plan to use it.

===  =======  =====================  ============  ========  ==============  ================  ====
.    1        2                      3             4         5               6                 7
===  =======  =====================  ============  ========  ==============  ================  ====
CA   Country  Provinces                            Counties
DE   Country  Länder                                         Postleitzahlen
ES   Country  Comunidades Autónomas  Provincias                              Municipios
FR   Country  Nouvelles régions      Départements            Codes Postaux   Communes (INSEE)  IRIS
MX   Country  Estados
NL   Country                                                 Postcodes
US   Country  States                               Counties  ZCTA
===  =======  =====================  ============  ========  ==============  ================  ====


Text processors
---------------

Concatenate Text
~~~~~~~~~~~~~~~~

This processor can be used to concatenate two fields using a separator. You'll need to define the left and right hand sides of the concatenation, as well as the separator and the resulting field.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Mandatory
  * * Separator
    * String
    * no
  * * Left value
    * Field
    * yes
  * * Right value
    * Field
    * yes
  * * Output field
    * Field
    * yes

Normalize URL
~~~~~~~~~~~~~

This processor can be used to normalize a field value that should contain a valid URL. It can be used for instance when the field's value contains leading or trailing spaces, or does not have any scheme specification (in which case 'http://' is prepended to the field's value).

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * Field that contains the URL to normalize
    * Field
    * yes

Extract URLs
~~~~~~~~~~~~

This processor extracts URLs from HTML or text content. It extracts http and https links into a field, the links are separated by a space.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * The field that contains HTML or text content
    * Field
    * yes
  * * Output field
    *
    * Field
    * yes

Decode HTML entities
~~~~~~~~~~~~~~~~~~~~

Decode HTML entities from a text, to transform it into valid HTML.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    *
    * Field
    * no
    *
  * * All fields
    *
    * Boolean
    * no
    * False

Replace via Regexp
~~~~~~~~~~~~~~~~~~

This processor can be used to replace a random regular expression pattern by new content. See
`<http://en.wikipedia.org/wiki/Regular_expression>`_ for more details on how to write a regular expressions.
You can test your regexp expressions with an online debugger tool like `Regex101 <https://regex101.com/>`_.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    *
    * Field
    * no
  * * All fields
    *
    * Boolean
    * no
  * * Regular expression
    *
    * String
    * yes
  * * New value
    *
    * String
    * no
  * * Case insensitive regular expression
    *
    * Boolean
    * no
  * * Multiline regular expression
    *
    * Boolean
    * no
  * * '.' character match newlines
    *
    * Boolean
    * no

Split Text
~~~~~~~~~~

This processor can be used to split a field's value and to extract the Nth element to a new field.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * Field that contains the text to split
    * Field
    * yes
  * * Separator
    * String or character to split with
    * String
    * yes
  * * Index
    * Index of the element to extract in the new field
    * Int
    * yes
  * * Output field
    * Name of the field that will contain the extracted element
    * Field
    * yes

Extract text
~~~~~~~~~~~~

This processor can be used to extract an arbitrary pattern expressed as a regular expression out of a string using sub matching.

The syntax of the sub-matching expression to specify is the following: ``(?P<NAME>REGEXP)``. Where:

* ``NAME`` is the name of a new field which will receive the result of the extraction. This field name can only contain letters, numbers and underscores (special characters like accentuated letters or commas are not allowed).
* ``REXGEXP`` is the submatch expression

For example, let's assume that you want to extract a street name out of an address. That is, for the address

.. code-block:: text

    600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis

you might want to extract the value ``Pennsylvania Ave NW`` in a field  ``street_name``.

You would have to write the following expression:

.. code-block:: text

    [0-9]+ (?P<street_name>.*), .*, .*, .*

And if you want to extract the street number in a field ``street_number``, simply extend the previous expression:

.. code-block:: text

    (?P<street_number>[0-9]+) (?P<street_name>.*), .*, .*, .*

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    *
    * Field
    * yes
  * * Regular expression
    *
    * String
    * yes

Replace Text
~~~~~~~~~~~~

Replace text in a field by a new text.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Field
    * Field that contains the text to replace
    * Field
    * no
  * * All fields
    * Checked: all the record's fields will be matched
    * Boolean
    * no
  * * Old value
    *
    * String
    * no
  * * New value
    *
    * String
    * no

Extract HTML
~~~~~~~~~~~~

This processor strips HTML tags from a field's values to only keep textual content.

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
    * Default value
  * * Field
    *
    * Field
    * yes
    *

Normalize Unicode values
~~~~~~~~~~~~~~~~~~~~~~~~

Normalize unicode content using the Normalization Form Canonical Composition (NFC)

It takes the following parameters:

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Mandatory
  * * Fields
    *
    * List
    * no
  * * All fields
    * Checked: all the record's fields will be normalized
    * Boolean
    * no

Extract from JSON
~~~~~~~~~~~~~~~~~

This processor extracts values from a field containing a JSON object following a list of ijson rules.

It creates target columns for the extracted data that are automatically named like the ijson rules but replacing dots with underscores. For each ijson rule, a column is created with the extracted value.

The processor doesn't support ijson rules that lead to an array (containing a ``.item`` in the rule).

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Example
  * * Field
    * Name of the field that holds the JSON object
    * Field
    * data
  * * ijson rules
    * ijson rules to apply to extract data from the JSON object above. An ijson rule is built with the names of all the field from the JSON root to the data to extract, separated with a dot.
    * List
    * block.metaB

For example, let's assume that you have this json object into a text field :

.. code-block:: json

    { "metaA": "Joe",
      "bloc" : {
            "metaB" : "valueB",
            "int": 5,
            "boolean": false
          },
      "sub" : { "sub_sub" : "sub_value"}
    }

* you will be able to extract the value ``Joe`` with this rule : ``metaA``
* you will be able to extract the value ``valueB`` with this rule : ``bloc.metaB``
* you will be able to extract the value ``5`` with this rule : ``bloc.int``
* you will be able to extract the value ``sub_value`` with this rule : ``sub.sub_sub``
* The rule ``bloc`` will extract the json object :

    .. code-block:: json

        {
            "metaB" : "valueB",
            "int": 5,
            "boolean": false
        }

This processor is not yet available by default. Please contact OpenDataSoft support team if you plan to use it, we will
activate it for you.

Expand JSON array
~~~~~~~~~~~~~~~~~

This processor transposes rows containing a JSON array into several rows with a new column containing each value of the array.

The parameter "ijson rule to array" works exactly like in the "Extract from JSON" processor and should contain the array to transpose (represented with the ijson rule ``.item``).

- If the field contains the JSON array directly, just put ``item`` as an ijson rule.
- If the final element is an array, the ijson rule must end with ``.item``, meaning that the reached object should be treated as an array of items in the ijson syntax.
- If you want to keep going into the items inside the array, you can keep adding key names after the ``.item``, but be careful to check that this path is valid for every object in the array.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Type
    * Example
  * * json array field
    * Name of the field that holds the JSON array
    * Field
    * data
  * * ijson rule to array
    * ijson rule to iterate in the JSON array above. An ijson rule is built with the names of all the field from the JSON root to the data to extract, separated with a dot.
    * List
    * block.metaB
  * * Output field
    * Name of the field that will contain the extracted element
    * Field
    *

Example of ijson rules to extract from the following JSON array field:

.. code-block:: json

    [
        {
          "metaB" : "value1",
          "int": 5,
          "boolean": false
        },
        {
          "metaB" : "value2",
          "int": 6,
          "boolean": true
        },
    ]

- ``item`` will transpose the record into two, one with each object of the array in the "Output field" column

.. code-block:: json

    { "metaA": "Joe",
      "bloc" : [
            {
              "metaB" : "value1",
              "int": 5,
              "boolean": false,
              "sub" : { "sub_sub" : "sub_value"}
            },
            {
              "metaB" : "value2",
              "int": 6,
              "boolean": true,
              "sub" : { "sub_sub" : "other_sub_value"}
            },
          ]
    }

- ``bloc.item`` will transpose the record into two, one with each object of the array in the "Output field" column
- ``bloc.item.sub`` will transpose the record into two, one with each object inside the "sub" tag of each object of the array.


This processor is not yet available by default. Please contact OpenDataSoft support team if you plan to use it, we will activate it for you.

Joining different datasets
--------------------------

This processor allows to you to join two datasets together the same way a classical database join would.

Let's take an example. You have two datasets:

**First dataset**: The list of taxi stations in Paris.

.. list-table::
   :header-rows: 1

   * * station_id
     * station_name
     * station_address
   * * 1
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 2
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

The name of this dataset is **paris_taxis_stations**.

**Second dataset**: The number of taxis waiting per station in Paris.

.. list-table::
   :header-rows: 1

   * * station_id
     * number
   * * 1
     * 10
   * * 2
     * 15

The Join processor allows you to enrich the second dataset with colums coming from the first dataset.

**Resulting dataset after a Join**

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

It takes the following parameters:

* **Dataset**

   The dataset used for the join; you can select it from your own datasets,
   or from OpenDataSoft's network of datasets.

* **Local Key**

   The local field that will be used to identify the corresponding records in the remote dataset. More than one key can
   be specified.

* **Remote Key**

   The remote field corresponding to the local key. This can be a list.

* **Output Fields**

   The list of fields to retrieve.

* **Retrieve All Fields**

   Set to retrieve all the fields of the remote dataset.

* **Case Sensitive**

* **One line**

   In some specific cases, the remote dataset may contain more than one row matching the local key. In which case, you
   may want to either collapse duplicates (that is, generate a single row which will contain multi-valued fields) or
   not. If this parameter is set, you can specify the character to use to separate values in the generated field in
   the **Separator** parameter.

Let's take an example and assume that the first dataset contains two rows for the first station:

.. list-table::
   :header-rows: 1

   * * station_id
     * station_name
     * station_address
   * * 1
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 1
     * Quai Branly
     * 69 quai Branly, 75007 Paris
   * * 2
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

If **One line** is set (with **Separator** set to `|`), the Join will result in:

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel&#124;Quai Branly
     * 69 quai Branly, 75007 Paris&#124;69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

If **One line** is not set, the Join will result in:

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 1
     * 10
     * Quai Branly
     * 69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

This processor is not yet available by default. Please contact OpenDataSoft support team if you plan to use it, we will
activate it for you.
