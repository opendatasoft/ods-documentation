Query Language
==============

Filtering features are built in the core of OpenDataSoft API engine.

The OpenDataSoft Query Language (ODSQL) makes it possible to express complex queries as a filtering context for datasets or records, but also to build aggregations or computed fields.

Note that a given filtering context can simply be copied from one API to another. For example, you can easily build a
user interface which first allows the user to visually select the records they are are interested in, using full text
search, facets and geo filtering ; and then allowing them to download these records with the same filtering context.

Introduction
------------

The ODSQL is split into five different kinds of clauses:

- the **select** clause allows you to choose the returned fields, give them an alias, or manipulate them with functions like count, sum, min, max, etc.
- the **where** clause acts as a filter for the returned datasets or records, thanks to boolean operations, filter functions, arithmetic expressions, and more.
- the **group by** clause lets you aggregate rows together based on fields, numeric ranges, or dates,
- the **order by** and **limit** clauses let you choose the order and quantity of rows you will receive as a response.

These clauses are used as parameters in the Search API v2 for searching, aggregating and exporting datasets and records. Depending on the endpoint you use, some features of the query language will be available or not in the request.

The whole query language is case insensitive but we will use upper case in the documentation for language keywords for clarity. Spaces are optional.

Language elements
-----------------

Literals
~~~~~~~~

Literals are used in comparison, assignments or functions. Literal types are **fields**, **strings**, **numbers**, **date**, **boolean** and **geometry**.

Here the format for each literal:

Field
^^^^^

Field literals are literals that are not enclosed in quotes. They contain only alphanumeric characters or underscore.

**WARNING**: If a field name contains only digits or is a keyword, it must be enclosed in back-quotes

.. code::

   my_field > 10
   `12` > 10      # without back-quotes 12 is considered as a numeric literal
   `and`: "value" # AND is a keyword

String
^^^^^^

String literals are enclosed in either single or double quotes.

.. code::

   "Word"
   "Multiple words"
   'Using single quotes'


Number
^^^^^^

.. code::

   100
   5.8
   my_field > 108.7

Date
^^^^

Date literals are defined with a ``date`` keyword followed by a valid date format enclosed in single quotes.

.. code::

   date'2017-04-03T08:02'
   date'2018/04/01'


Boolean
^^^^^^^

Boolean literals should be used in boolean filters and can be either TRUE or FALSE keywords (non case sensitive)

.. code::

   my_boolean_field is TRUE
   my_boolean_field: FALSE


Geometry
^^^^^^^^

Geometry literals are defined with a ``geom`` keyword followed by a valid geometry expression enclosed in single quotes.
Supported geometry expression are :

- WKT/WKB : https://en.wikipedia.org/wiki/Well-known_text
- GEOJSON

.. code::

   distance(my_geo_field, geom'POINT(1 1)', 10km)
   geometry(my_geo_field, geom'{"type": "Polygon","coordinates":[[[100.0, 0.0],[101.0, 0.0],[101.0, 1.0],[100.0, 1.0],[100.0,0.0]]]}')


Reserved words
~~~~~~~~~~~~~~

All these words must be back-quoted if used as field name.

.. code::

   and
   as
   asc
   avg
   by
   count
   date_format
   day
   dayofweek
   desc
   equi
   false
   group
   hour
   or
   limit
   lower
   max
   millisecond
   min
   minute
   month
   not
   null
   quarter
   range
   second
   select
   sum
   top
   true
   upper
   where
   year


Select clause
-------------

The **select** clause can be used in the whole search API as the parameter ``select``. Its goal is to allow you to choose the fields that will be returned for each row, transform them using arithmetic, rename them, add computed virtual fields, include or exclude fields based on a pattern.

A **select** clause can be:

- a single expression
- a list of comma-separated expressions

Select expression
~~~~~~~~~~~~~~~~~

.. code::

  *
  field1, field2, field3
  field1 AS my_field, field2
  field1 * 2 AS twice_field1

These expressions are classic expressions showing multiple selection, field renaming and arithmetic select. The '*' (wildcard) means all the fields (if not in an arithmetic select where it is treated as the multiply sign). It is the default behavior when no select is specified in the search endpoint. In the aggregates endpoint, the default is to only display fields used for the aggregation.

Include and exclude
~~~~~~~~~~~~~~~~~~~

.. code::

  INCLUDE(pop) # will only include fields which name is pop
  EXCLUDE(pop) # will exclude fields which name is pop


Where clause
------------

The **where** clause can be used in the whole search API as the parameter ``where``. Its goal is to filter rows with a combination of boolean expressions, functions, expressions or search queries.

A **where** clause can be:

- a single expression
- a list of comma-separated expressions that must all be satisfied at the same time
- empty

Filter functions
~~~~~~~~~~~~~~~~

Filter functions are built-in functions that can be used as a where expression:

The **type** function returns rows where the field named *field_name* has some type in ``INT``, ``DOUBLE``, ``TEXT``, ``FILE``, ``DATE``, ``DATETIME``, ``IMAGE``.

.. code::

   TYPE(INT, field_name)

The **distance** function limits the result set to a geographical area defined by a circle defined by its center and a distance. The coordinates of the center of the circle are expressed in the `WKT format <https://en.wikipedia.org/wiki/Well-known_text>`_). The distance is numeric and can have a unit in ``mi``, ``yd``, ``ft``, ``m``, ``cm``, ``km``, ``mm``.

.. code::

   DISTANCE(field_name, geometry, distance)
   DISTANCE(field_name, GEOM'wkt_point', 1 km)
   DISTANCE(field_name, GEOM'wkt_point', 100 yd)

The **geometry** function limits the result set to a geographical area defined by a polygon with coordinates expressed in the WKT format, and a mode in ``INTERSECT``, ``DISJOINT``, ``WITHIN``.

.. code::

   GEOMETRY(field_name, geometry, mode)
   GEOMETRY(field_name, GEOM'wkt_shape', INTERSECT)
   GEOMETRY(field_name, GEOM'wkt_shape', DISJOINT)
   GEOMETRY(field_name, GEOM'wkt_shape', WITHIN)

The **bbox** function limits the result set to a rectangular box defined by its top left and its bottom right coordinates expressed in the WKT format.

.. code::

   BBOX(field_name, geometry, geometry)
   BBOX(field_name, GEOM'wkt_point', GEOM'wkt_point')

Filter expressions
~~~~~~~~~~~~~~~~~~

Filter expressions allow you to use arithmetic and comparisons to limit the result set to matching rows.

.. code::

  field_name > 5
  field_name * 2 <= 10
  field_name * 2 = (10 + 1) * 2
  field_name != 0
  field_name IS NOT NULL

Filter expressions also work with dates and ranges of dates, as the following examples show.

.. code::

  field_name >= DATE'2008-12'
  field_name:[ DATE'2007-11' TO DATE'2008-01' [
  field_name IN ] DATE'2007-11-01' .. DATE'2008-01-22' [
  field_name_1:[ DATE'2007-11' TO DATE'2008-01' ] AND NOT field_name_2 = 2

As you can see in these examples, the syntax is flexible and you can combine several statements thanks to boolean expressions (``AND``, ``OR``, ``NOT``).

For text searches, the matched string must be single or double quoted. The keyword "LIKE" is used to perform approximate searches, or prefixed searches.

.. code::

  field_name = "school"       # exact match
  field_name: "school"        # will match "high school", "school", "school bus", but not "schoolbag"
  field_name LIKE "school"    # will match "high school", "school", "school bus", but not "schoolbag"
  field_name LIKE "school*"   # will match "school", "schoolbag", "schoolbook"

Text field
^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Operators
     * Description
   * * ``like``
     * Perform a normalized query on provided token. Example: ``film_name like "star"`` will match ``star wars`` and ``Star Trek``
       To match multi tokens, it is possible to use quotes. ``film_name like "star wars"`` will match fields containing ``star`` and ``wars``
   * * ``:`` , ``=``
     * Perform an exact query (not tokenized and not normalized) on the specified field.
       Example: ``film_name="Star"`` will not match ``Star Wars``. To match ``Star Wars`` it is necessary to query the exact string.
       ``film_name="Star Wars"``

Numeric field
^^^^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Operators
     * Description
   * * ``:`` , ``=``
     * Match a numeric value. For instance: ``age:18`` will filter rows with field ``age`` is equal to ``18``
   * * ``>``, ``<``, ``>=``, ``<=``
     * Return results whose field values are larger, smaller, larger or equal, smaller or equal to the given value.
   * * ``[lower_numeric (TO|..) higher_numeric]``
     * Queries Records whose numeric value is between ``lower_numeric`` and ``higher_numeric``.
       An inclusive or exclusive bound can be used. Example: ``]lower_numeric (TO|..) higher_numeric[`` will exclude ``lower_numeric`` and ``higher_numeric``.


Date field
^^^^^^^^^^

.. list-table::
   :header-rows: 1

   * * Operators
     * Description
   * * ``:``, ``=``
     * Match a date value. For instance: ``film_date:1977`` will return films released in 1977.
   * * ``>``, ``<``, ``>=``, ``<=``
     * Return results whose field values are larger, smaller, larger or equal, smaller or equal to the given value.
   * * ``[lower_date (TO|..) higher_date]``
     * Queries Records whose numeric value is between ``lower_date`` and ``higher_date``.
       An inclusive or exclusive bound can be used. Example: ``]lower_date (TO|..) higher_date[`` will exclude ``lower_date`` and ``higher_date``.

Date formats can be specified in different formats: simple (YYYY[[/mm]/dd]) or ISO 8601 (YYYY-mm-DDTHH:MM:SS)

**Examples:**

* ``film_date >= 2002``
* ``film_date >= 2013/02/11``
* ``film_date: [1950 TO 2000]``
* ``film_box_office > 10000 AND film_date < 1965``

Filter search query
~~~~~~~~~~~~~~~~~~~

Filter search queries are queries that don't refer to fields, only containing quoted strings and boolean operators. They perform full-text searches on all visible fields of each record and return matching rows.

.. code::

  "tree"
  "tree" AND "flower"
  "tree" OR "car"
  NOT "dog"
  "dog" AND NOT "cat"

If the string contains more than one word, the query will be an ``AND`` query on each tokenized word.

.. code::

  "film"           # returns results that contain film
  "action movies"  # returns results that contain action and movies.

It is possible to perform a greedy query by adding a wildcard `*` at the end of a word.

.. code::

  "film*"      # returns results that contain film, films, filmography, etc.


Field queries
~~~~~~~~~~~~~

One of the major features of the query language is to allow per field filtering. You can use field names as a prefix to
your queries to filter the results based on a specific field's value.

**For the dataset search API**, the list of available fields corresponds exactly to available metadata. By default:

.. list-table::
   :header-rows: 1

   * * Field Name
     * Description
   * * publisher
     * The dataset publisher
   * * title
     * The dataset title
   * * description
     * The dataset description
   * * license
     * The dataset license
   * * records_count
     * The number of records in the dataset
   * * modified
     * The last modification date of the dataset
   * * language
     * The language of the dataset (iso code)
   * * theme
     * The theme of the dataset
   * * references
     * The references for the dataset

The domain administrator might define a richer metadata template, thus giving access to a richer set of filtering fields.

For example, one can search on public.opendatasoft.com datasets which have ``Paris`` in their title or description and
which contain at least 50 000 records:

.. code::

  (title:"paris" OR decription:"paris") AND records_count >= 50 000
  http://public.opendatasoft.com/api/v2/catalog/datasets?where=(title:paris%20OR%20description:paris)%20AND%20records_count%20>=%2050000

**For the record search APIs**, the list of available fields depends on the schema of the dataset. To fetch the list of
available fields for a given dataset, you may use the search dataset or lookup dataset APIs.

For example one can search in the dataset containing the history of the SuperBowl, the ones that happened in a stadium called "Bowl".

.. code::

  stadium: "bowl"
  http://public.opendatasoft.com/api/v2/catalog/datasets/super-bowl/records?where=stadium:"bowl"

Multiple operator fields can be used between the field name and the query depending of the type.


Group by clause
---------------

The **group by** clause can be used in the whole search API as the parameter ``group_by``. It enables you to group a set of rows together by field value, or by numeric or date range.

A **group by** clause can be:

- a single expression
- a list of comma-separated expressions. Like selects, group by expressions can have an ``AS`` statement to give them a label

Static range
~~~~~~~~~~~~

The static range function takes two parameters: a field name and an array of steps inside brackets. The side of brackets determines if values lower than the lower bound and higher than the higher bound should be grouped together or ignored.

.. code::

  RANGE(population, ]10, 50, 100[)

This statement will create 4 buckets: ``*-10``, ``10-50``, ``50-100`` and ``100-*``.

.. code::

  RANGE(population, [20.5[)

This statement will create one bucket: ``20.5-*``.

.. code::

  RANGE(population, [1,2,3])

This statement will create two buckets: ``1-2`` and ``2-3``.

Equi range
~~~~~~~~~~

The equi range function takes four parameters: a field name, a step value, a lower bound and an higher bound.

.. code::

  RANGE(population, EQUI(5,10,30))

This statement will create the following buckets:

- ``*-10``
- ``10-15``
- ``15-20``
- ``20-25``
- ``25-30``
- ``30-*``

Order by clause
---------------

The order by (``order_by`` parameter) lets you choose how the results of your query will be sorted. It takes a list of field names, each of which have an optional ``ASC`` or ``DESC`` option to choose between ascending and descending order (default is ascending).

.. code::

  population, gdp DESC

This statement will order the results by population (ascending), and results with the same population by descending GDP.

Limit clause
------------

The limit clause (``limit`` parameter) is very straightforward. It is maximum number of rows you want to receive in the result of your query. The default limit is 10 records, and most of the requests except exports have a maximum limit of 10 000 records.

Query language functions
------------------------

Advanced functions can be used in the query language.

.. list-table::
   :header-rows: 1

   * * Function name
     * Description
   * * now
     * Returns the current date. This function may be called as a query value for a field. When called without an
       argument, it will evaluate to the current datetime: ``birthdate >= NOW()`` returns all Records
       containing a birth date greater or equal to the current datetime. This function can also accept parameters, see
       below for the ``NOW()`` function available parameters.

Available parameters for the ``NOW()`` function:

* years, months, weeks, days, hours, minutes, seconds, microseconds: These parameters add time to the current date.

  For example: ``NOW(years=-1, hours=-1)`` returns the current date minus a year and an hour

* year, month, day, hour, minute, second, microsecond: can also be used to specify an absolute date.

  For example: ``NOW(year=2001)`` returns the current time, day and month for year 2001

* weekday: Specifies a day of the week. This parameter accepts either an integer between 0 and 6 (where 0 is Monday and
  6 is Sunday) or the first two letters of the day (in English) followed by the cardinal of the first week on which to
  start the query.

  ``NOW(weeks=-2, weekday=1)`` returns the Tuesday before last.

  ``NOW(weekday=MO(2))`` returns Monday after next.
