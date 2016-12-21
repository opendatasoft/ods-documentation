Processors
==========

.. ifconfig:: language == 'en'

   .. raw:: html

      <iframe src="https://player.vimeo.com/video/81835519" width="500" height="252" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. ifconfig:: language == 'fr'

   .. raw:: html

      <iframe src="https://player.vimeo.com/video/81891386" width="500" height="252" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Geo Processors
--------------

.. image:: processors-geo-en.jpg
   :alt: Geo Processors

Normalize Projection Reference
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor can be used to handle a **Geo Point 2D** with a projection system different from
`WGS84 <http://en.wikipedia.org/wiki/WGS_84>`_ field. It takes as a parameter the name of the field as well as the
`EPSG <http://spatialreference.org/ref/epsg/>`_ code of the source coordinates system. The field's value is replaced
with its WGS84 representation.

For instance, if you set the EPSG code to ``27572``, the processor will consider that the original geo field contains
coordinates expressed in `Lambert Zone II <http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/>`_.

Note that the input must be expressed with the same logic as a WGS84 geo coordinate: ``Y,X``.

Country Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a country `ISO code <http://en.wikipedia.org/wiki/ISO_3166-1>`_ to produce a geo coordinate.

Zip Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a post code to produce a geo coordinate. It is currently only implemented for French post codes.

INSEE Code to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses French INSEE code to produce a geo coordinate.

Convert Degrees
~~~~~~~~~~~~~~~

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

IP Address to Geo Coordinates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode an IP address. It uses the `GeoIP <http://geolite.maxmind.com>`_ database.

Geocode with Google
~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode full text addresses by using the Google geocoding API. You need to possess a
Google API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if
you plan to use it.

Geocode with ArcGIS
~~~~~~~~~~~~~~~~~~~

This processor allows you to geocode full text addresses by using the ArcGIS geocoding API. You need to possess an
ArcGIS API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if
you plan to use it.

Geomasking
~~~~~~~~~~

This processor allows you to anonymize location data (**Geo Point 2D**).
It gives a random displacement within a donut defined by an outer circle, and a smaller internal circle.

The same coordinate anonymized several times:

.. image:: processors-geomasking-en.jpg
   :alt: Geomasking
   
Retrieve Administrative Divisions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor uses a **Geo Point 2D** to retrieve information (name, code and **Geo Shapes**) of administrative 
divisions. You need to choose an administrative level between 1 and 7. The available administrative divisions 
are referenced in the table below.

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

Dates Processors
----------------

.. image:: processors-date-en.jpg
   :alt: Date Processors

Set Timezone
~~~~~~~~~~~~

This processor can be used to force the timezone of a datetime field. This might be useful when, for instance, the
source outputs timestamps with no timezone indication.

Normalize Date
~~~~~~~~~~~~~~

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

Numerical Processors
--------------------

.. image:: processors-num-en.jpg
   :alt: Num Processors

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
     * expression ? value if the expression is true : value if the expression is false (conditional statement, note that the value can be another expression)

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
     * sin, asin, asinh, cos, acos, acosh, tan, atan, atanh, ceil, abs, factorial, floor, exp, log, log10, sqrt, degrees, radians, sigmoid, gamma, round, trunc, touppercase, upper, tolowercase, lower, capitalize_all, capitalize, isupper, islower, isdecimal, isdigit, isnumeric, isalnum, isalpha, random, length, normalize (unicode), dayofweek, year, month, hour, minute, second, microsecond, fromtimestamp
   * * Two operands
     * pow, max, min, mod, div, gcd, round, random, contains, endswith, startswith, dayofweek, year, month, hour, minute, second, microsecond, add_seconds, add_minutes, add_hours, add_days, add_months, add_years
   * * Three operands
     * ljust, rjust, center, replace, datediff

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

Text Processors
---------------

.. image:: processors-text-en.jpg
   :alt: Text Processors

Replace Regexp
~~~~~~~~~~~~~~

This processor can be used to replace or remove any part of a text or a number or a combination of both.

One use case is keeping only a part of a number, for example from a french Zip code to keep only the area code, e.g from 44100 (Nantes city) keep only 44 (Loire-Atlantique area).

.. ifconfig:: language == 'en'

  .. figure:: processing__replace-regexp-en.png
    :alt: Replace Regexp

    In this example, the regular expression processor is configured with the pattern ``[0-9]{3}$``, and a replacement by nothing. The pattern means "select 3 digits from the end", with ``[0-9]`` meaning any digit, ``{3}`` meaning exactly 3 occurences, and ``$`` meaning the end of the text. These 3 digits from the end are then replaced by nothing, so only the first 2 digits will stay.

.. ifconfig:: language == 'fr'

  .. figure:: processing__replace-regexp-fr.png
    :alt: Replace Regexp

    In this example, the regular expression processor is configured with the pattern ``[0-9]{3}$``, and a replacement by nothing. The pattern means "select 3 digits from the end", with ``[0-9]`` meaning any digit, ``{3}`` meaning exactly 3 occurences, and ``$`` meaning the end of the text. These 3 digits from the end are then replaced by nothing, so only the first 2 digits will stay.


See `<http://en.wikipedia.org/wiki/Regular_expression>`_ for more details on how to write a regular expressions.
You can test your regexp expressions with an online debugger tool like `Regex101 <https://regex101.com/>`_. 


Extract Text
~~~~~~~~~~~~

This processor can be used to extract any part of a text or a number or a combination of both into a new column. It's similar to the Replace Regexp processor, except instead of replacing the content in place the same column, a new column is created with the selected text.

The idea is to put the part we want to extract in parenthesis. This part will then be extracted in a new column. 

Using the same example as for the Replace Regexp processor (from a french zip code like 44100, keep only the area code 44), the Extract Text processor can be used to create another column with the area code selected, instead of replacing the content like with the Replace Regexp processor.


.. ifconfig:: language == 'en'

  .. figure:: processing__extract-text-en.png
    :alt: Replace Regexp

    In this example, we use the pattern ``(?P<area>[0-9]{2})[0-9]{3}``. ``[0-9]`` means any digit, and ``{2}`` or ``{3}`` means the number of digits we are looking for. In this case we want to extract the first two digits, so we put them in parenthesis, then after the parenthesis we put the rest of the sequence that we don't want to extract, here the remaining 3 digits. The special expression ``?P<area>`` is just for specifiying the new column name

.. ifconfig:: language == 'fr'

  .. figure:: processing__extract-text-fr.png
    :alt: Replace Regexp

    In this example, we use the pattern ``(?P<area>[0-9]{2})[0-9]{3}``. ``[0-9]`` means any digit, and ``{2}`` or ``{3}`` means the number of digits we are looking for. In this case we want to extract the first two digits, so we put them in parenthesis, then after the parenthesis we put the rest of the sequence that we don't want to extract, here the remaining 3 digits. The special expression ``?P<area>`` is just for specifiying the new column name


From a more technical point of view, this processor can be used to extract an arbitrary pattern expressed as a regular expression out of a string using sub
matching.

The syntax of the sub-matching expression to specify is the following: ``(?P<NAME>REGEXP)``. Where:

* ``NAME`` is the name of a new field which will receive the result of the extraction. This field name can only contain
  letters, numbers and underscores (special characters like accentuated letters or commas are not allowed).
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

Normalize URL
~~~~~~~~~~~~~

This processor can be used to normalize a field value that should contain a valid URL. It can be used for instance when
the field's value contains leading or trailing spaces, or does not have any scheme specification (in which case
'http://' is prepended to the field's value).

Split Text
~~~~~~~~~~

This processor can be used to split a field's value and to extract the Nth element to a new field.

The number of the part extracted is specified in the ``index`` parameter. Note that the numbering starts at 0.

.. ifconfig:: language == 'en'

  .. figure:: processing__split-text-en.png
    :alt: Split Text

.. ifconfig:: language == 'fr'

  .. figure:: processing__split-text-fr.png
    :alt: Split Text


Concatenate Text
~~~~~~~~~~~~~~~~

This processor can be used to concatenate two fields using a separator. You'll need to define the left and right hand
sides of the concatenation, as well as the separator and the resulting field.

One common use case is to concatenate a X and Y coordinates columns in a new column with both separated by a comma, which can then be used as a ``geo point``.

.. ifconfig:: language == 'en'

  .. figure:: processing__concatenate-en.png
    :alt: Concatenate Text

    In this example, we concatenate the column X and Y in a new column Coordinates, which can then be used as a ``geo point``

.. ifconfig:: language == 'fr'

  .. figure:: processing__concatenate-fr.png
    :alt: Concatenate Text

    In this example, we concatenate the column X and Y in a new column Coordinates, which can then be used as a ``geo point``


Extract HTML
~~~~~~~~~~~~

This processor strips HTML tags from field values.

Extract URLs
~~~~~~~~~~~~

This processor extracts URLs from HTML or text content. It extracts http and https links into a field, the links are
separated by a space.

Field Processors
----------------

.. image:: processors-fields-en.jpg
   :alt: Fields Processors

Copy a Field
~~~~~~~~~~~~

Copy a field value into another field.

Add a Field
~~~~~~~~~~~

Add a raw new field, that can be filled by other processors.

Skip a Record
~~~~~~~~~~~~~

Skip a record if one of its fields matches a specific value.

Join Dataset
~~~~~~~~~~~~

This processor allows to you to Join two datasets together. Think about the classical database join.

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

Transpose Fields
~~~~~~~~~~~~~~~~

This processor makes it possible to transform field names into field values.

Let's take a simple example, with a dataset containing for a couple of countries the evolution of the number of
inhabitants from 2020 to 2030.

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

With this representation, it becomes super easy to build subsets of the dataset using facets based filtering mechanism.

The **Transpose Fields** processor makes it super easy to configure this kind of transformation.

You'll need to define the following parameters:

* **Fixed fields**

  Defines the list of fields that shall be kept as is. In the above sample, this would have been *Country Name*

* **Label for title column**

  Defines the label of the new column containing the names of the fields that have been transposed. In the above
  sample, this would have been *Year*.

* **Label for the value column**

  Defines the label of the new column containing the former cell values. This would have been *Inhabitants* in the
  above sample.

* **One line**

  Make it possible to group / concat transposal results, using a specific **Separator**. With the above sample,
  activating the One line option and choosing ';' as a separator, th result would have been the following:

.. list-table::
   :header-rows: 1

   * * Country Name
     * Year
     * Inhabitants
   * * France
     * 2050;2020;2030
     * 100 000 000;70 000 000;80 000 000
   * * UK
     * 2050;2020;2030
     * 90 000 000;65 000 000;70 000 000
   * * USA
     * 2050;2020;2030
     * 450 000 000;350 000 000;400 000 000

Extract from Json (Beta - Can be activated on demand)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This processor can be used to extract values from a json object.

It rely on ijson library and use the same syntax for rule extraction.

For example, let's assume that you have this json object into a text field :

.. code-block:: json

    { "metaA": "Joe",
      "bloc" :
          [
            {"metaB" : "valueB"},
            {"int": 5},
            {"boolean": {} }
          ],
      "sub" : { "sub_sub" : "sub_value"}
    }

* you will be able to extract the value ``Joe`` with this rule : ``metaA``
* you will be able to extract the value ``valueB`` with this rule : ``bloc.item.metaB``
* you will be able to extract the value ``5`` with this rule : ``bloc.item.int``
* you will be able to extract the value ``sub_value`` with this rule : ``sub.sub_sub``
* The rule ``bloc.item`` will extract the last object of the json list : ``{boolean: {}}``
* The rule ``bloc`` will extract the json list :

    .. code-block:: json

        [
            {"metaB" : "valueB"},
            {"int": 5},
            {"boolean": {} }
        ]
