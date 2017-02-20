Query Language
==============

Filtering features are built in the core of OpenDataSoft API engine. Many of the previously listed APIs can take as a
parameter filters for constraining the list of returned datasets or records.

The OpenDataSoft Query Language (ODSQL) makes it possible to express complex queries as a filtering context for datasets or records, but also to build aggregations or computed fields.

Note that a given filtering context can simply be copied from one API to another. For example, you can easily build a
user interface which first allows the user to visually select the records their are interested in, using full text
search, facets and geo filtering, and then allowing them to download these records with the same filtering context.

Introduction
------------

The ODSQL is split into five different kinds of clauses:

- the **select** clause allows you to choose the returned fields, give them an alias, or manipulate them with functions like count, sum, min, max, etc.
- the **where** clause acts as a filter for the returned datasets or records, thanks to boolean operations, filter functions, arithmetic expressions, and more.
- the **group by** clause lets you aggregate rows together based on fields, numeric ranges, or dates,
- the **order by** and **limit** clauses let you choose the order and quantity of rows you will receive as a response.

These clauses are used as parameters in the Search API v2 for searching, aggregating and exporting datasets and records. Depending on the endpoint you use, some features of the query language will be available or not in the request.

The whole query language is case insensitive but we will use upper case in the documentation language keywords for clarity. Spaces are optional.

Where clause
------------

The **where** clause can be used in the whole search API as the parameter ``q``. Its goal is to filter rows with a combination of boolean expressions, functions, expressions or search queries.

A **where** clause can be a single expression, a list of comma-separated expressions that must all be satisfied at the same time, or empty.

Filter functions
~~~~~~~~~~~~~~~~

Filter functions are built-in functions that can be used as a where expression:

The **type** function returns rows where the field named *field_name* has some type in ``INT``, ``DOUBLE``, ``TEXT``, ``FILE``, ``DATE``, ``DATETIME``, ``IMAGE``.

.. code::

   TYPE(INT, field_name)

The **distance** function limits the result set to a geographical area defined by a circle defined by its center and a distance. The coordinates of the center of the circle are expressed in WGS84 (GEOM'lat,long'). The distance is numeric and can have a unit in ``mi``, ``yd``, ``ft``, ``m``, ``cm``, ``km``, ``mm``.

.. code::

   DISTANCE(field_name, geometry, distance)
   DISTANCE(field_name, GEOM'48.8520930694,2.34738897685', 1 km)
   DISTANCE(field_name, GEOM'48.8520930694,2.34738897685', 100 yd)

The **geometry** function limits the result set to a geographical area defined by a polygon with coordinates expressed in WGS84 as in GEOM'(lat1,lon1),(lat2,lon2),(lat3,lon3)', and a mode in ``INTERSECT``, ``DISJOINT``, ``WITHIN``.

.. code::

   GEOMETRY(field_name, geometry, mode)
   GEOMETRY(field_name, GEOM'(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)', INTERSECT)
   GEOMETRY(field_name, GEOM'(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)', DISJOINT)
   GEOMETRY(field_name, GEOM'(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)', WITHIN)

The **bbox** function limits the result set to a rectangular box defined by its top left and its bottom right coordinates expressed in WGS84 as in GEOM'(lat,long)'.

.. code::

   BBOX(field_name, geometry, geometry)
   BBOX(field_name, GEOM'48.8520930694,2.34738897685', GEOM'48.844967, 2.355798')

Full-text search
----------------

The query language accepts full text queries.

This query returns all results that contain all words passed in the query.
If a given word or compounds is surrounded with double quotes, it performs an ``AND`` query on each tokenized word.

* ``q=film`` returns results that contain film
* ``q="action movies"`` returns results that contain action and movies.

It is possible to perform a greedy query by adding a wildcard `*` at the end of a word.

* ``q=film*`` returns results that contain film, films, filmography...

Boolean expressions
-------------------

The query language supports the following boolean operators ``AND``, ``OR`` and ``NOT``.

Parenthesis can be used to group together expressions and alter the default priority model:

* ``NOT``
* ``AND``
* ``OR``

Samples

* ``film OR trees``
* ``(film OR trees) AND paris``

Field queries
-------------

One of the major feature of the query language is to allow per field filtering. You can use field names as a prefix to
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

The domain administrator might define a richer metadata template, thus giving acces to a richer set of filtering fields.

For example, one can search on public.opendatasoft.com datasets which have ``Paris`` in their title or description and
which contain at least 50 000 records:

``(title:paris OR decription:paris) AND records_count >= 50 000``
http://public.opendatasoft.com/api/v2/catalog/datasets?q=(title:paris%20OR%20decription:paris)%20AND%20records_count%20\>=%2050000

**For the record search APIs**, the list of available fields depend on the schema of the dataset. To fetch the list of
available fields for a given dataset, you may use the search dataset or lookup dataset APIs.

For example one can search in the dataset containing the movies shooting spots in Paris in the last decade any film
directed by Woody Allen:
`<http://public.opendatasoft.com/api/v2/catalog/datasets/tournagesdefilmsparis2011/records?q=realisateur%3A%22woody+allen%22>`_.

Multiple operator fields can be used between the field name and the query depending of the type

Text field
~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Operators
     * Description
   * * ``:``
     * Perform a normalized query on provided token. Example: ``film_name:star`` will match ``star wars`` and ``Star Trek``
       To match multi tokens, it is possible to use quotes. ``film_name:"star wars"`` will match fields containing ``star`` and ``wars``
   * * ``=``
     * Perform an exact query (not tokenized and not normalized) on the specified field.
       Example: ``film_name=Star`` will not match ``Star Wars``. To match ``Star Wars`` it is possible to use quotes.
       ``film_name="Star Wars``

Numeric field
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Operators
     * Description
   * * ``:``, ``=``
     * Match a numeric value. For instance: ``age:18`` will filter rows with field ``age`` is equals to ``18``
   * * ``>``, ``<``, ``>=``, ``<=``
     * Return results whose field values are larger, smaller, larger or equal, smaller or equal to the given value.
   * * ``[lower_numeric (TO|..) higher_numeric]``
     * Queries Records whose numeric value is between ``lower_numeric`` and ``higher_numeric``.
       An inclusive or exclusive bound can be used. Example: ``]lower_numeric (TO|..) higher_numeric[`` will exclude ``lower_numeric`` and ``higher_numeric``.


Date field
~~~~~~~~~~

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
       An inclusive or exclusive bound can be used. Example: ``]lower_numeric (TO|..) higher_numeric[`` will exclude ``lower_date`` and ``higher_date``.



Date formats can be specified in different formats: simple (YYYY[[/mm]/dd]) or ISO 8601 (YYYY-mm-DDTHH:MM:SS)

Examples:

* ``film_date >= 2002``
* ``film_date >= 2013/02/11``
* ``film_date: [1950 TO 2000]``
* ``film_box_office > 10000 AND film_date < 1965``


Query language functions
------------------------

Advanced functions can be used in the query language. Function names need to be prefixed with a sharp (``#``) sign.

.. list-table::
   :header-rows: 1

   * * Function name
     * Description
   * * now
     * Returns the current date. This function may be called as a query value for a field. When called without an
       argument, it will evaluate to the current datetime: ``birthdate >= #now()`` returns all Records
       containing a birth date greater or equal to the current datetime. This function can also accept parameters, see
       below for the ``#now`` function available parameters.
   * * null
     * This function may be called specifying a field name as a parameter. It returns the hits for which no value is
       defined for the specified field. For example ``#null(birthdate)``

**Available parameters for the ``#now`` function**:Ò

* years, months, weeks, days, hours, minutes, seconds, microseconds: These parameters add time to the current date.

  For example: ``#now(years=-1, hours=-1)`` returns the current date minus a year and an hour

* year, month, day, hour, minute, second, microsecond: can also be used to specify an absolute date.

  For example: ``#now(year=2001)`` returns the current time, day and month for year 2001

* weekday: Specifies a day of the week. This parameter accepts either an integer between 0 and 6 (where 0 is Monday and
  6 is Sunday) or the first two letters of the day (in English) followed by the cardinal of the first week on which to
  start the query.

  ``#now(weeks=-2, weekday=1)`` returns the Tuesday before last.

  ``#now(weekday=MO(2))`` returns Monday after next.
