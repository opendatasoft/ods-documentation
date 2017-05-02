Aggregations
============

To illustrate the general concept of the aggregation API, we'll consider a dataset describing daily sales for a number
of stores worldwide, that is with the following fields:

* store_name (string)
* store_address (string)
* store_country (string)
* store_coordinates (geo coordinates)
* sales_date (date)
* sales_count (integer)
* sales_amount (decimal)

The aggregate API allows the creation of virtual fields, limited to the request and that can be used in aggregates.

**Example:** The daily average sale price for each store.

The main function of the API is to group dataset records by a finite number of fields and to return aggregated values
for other fields.

**Example:** the total sales count per country, the total sales amount and the average of daily average sale price.

It also allows for more complex aggregations.

**Example:** the average price sale per country during the year: total sales amount / total sales count.

You can also join to each group a finite list of fetched values, that is values extracted from the group rows according
to a criteria:

**Example:** the best performing month (ie: month with the most sales_amount) for each country.

Request:

.. code-block:: js

    {
        "virtual_fields": {
            "daily_avg_sale_price": "sales_amount / sales_count"
        },
        "aggregations": {
            "my_aggregation": { // name of this aggregation, used to multiplex multiple aggregations
                "group_by": [
                    "store_country"
                ],
                "aggregates": {
                    "total_sales_count": "SUM(sales_count)",
                    "total_sales_amount": "SUM(sales_amount)",
                    "overall_average_sale_price": "AVG(daily_avg_sale_price)",
                    "real_average_sale_price": "SUM(sales_amount) / SUM(sales_count)"
                }
            }
        }
    }

Response:

.. code-block:: js

    {
        "links": [ // HATEOAS navigation links
            {
                "rel": "self",
                "href": "https://mydomain.opendatasoft.com/api/v2/datasets/sales/aggregate"
            },
            {
                "rel": "dataset",
                "href": "https://mydomain.opendatasoft.com/api/v2/datasets/sales"
            }
        ],
        "aggregations": {
            "my_aggregation": [
                {
                    "store_country": "afghanistan", // first alphabetical country
                    "total_sales_count": "XX",
                    "total_sales_amount": "XY",
                    "overall_average_sale_price": "YY",
                    "real_average_sale_price": "YZ",
                },
                {
                    "store_country": "albania",
                    "total_sales_count": "XX",
                    "total_sales_amount": "XY",
                    "overall_average_sale_price": "YY",
                    "real_average_sale_price": "YZ",
                },
                // etc...
            ]
        }
    }

See the API console for the full reference on the request's syntax.

Aggregate functions
-------------------

These functions accept as argument a field name or a virtual field and perform an aggregation function on its values.

**Example:**

Still using the dataset described at the beginning, let's assume we want to 'cook the books' and report a
little less sales each day and pocket the difference at the end of the year.

Request:

.. code-block:: js

    {
        "virtual_fields": {
            "reported_sales_amount": "sales_amount - 20"
        },
        "aggregations": {
            "my_aggregation": { // name of this aggregation, used to multiplex multiple aggregations
                "group_by": [
                    "store_name"
                ],
                "aggregates": {
                    "total_sales_amount": "SUM(sales_amount)",
                    "reported_total_sales_amount": "SUM(reported_sales_amount)"
                }
            }
        }
    }


* ``MAX(field)``

    Arguments :

       * ``field`` a decimal/integer field

* ``MIN(field)``

    Arguments :

       * ``field`` a decimal/integer field

* ``SUM(field)``

    Arguments :

       * ``field`` a decimal/integer field

* ``AVG(field)``

    Arguments :

       * ``field`` a decimal/integer field

* ``COUNT()``

* ``STDDEV(field)`` standard deviation

    Arguments :

       * ``field`` a decimal/integer field

* ``SUMSQUARES(field)`` sum of the squares

    Arguments :

       * ```field`` a decimal/integer field

* ``PERCENTILES(field, percents)`` a map of the  percentiles values (indexed by percent) within the current group.

    Arguments:

    * ``field`` a decimal/integer field
    * ``percents`` a list of percentages for which we want a percentile value. Can accept both integer and decimal percentages (ie both 99 and 99.9)

    Examples:

    * ``PERCENTILES(my_decimal_field)`` -> ``{0: XX, 1: XY, ..., 99: YZ, 100: ZZ}``
    * ``PERCENTILES(my_decimal_field, [0, 50, 90, 99, 99.9])`` -> ``{0: XX, 50: XY, 90: YY, 99: YZ, 99.9: ZZ}``


Incremental functions for aggregates

All of the above functions are also available in an ``INCREMENTAL`` version. That is the result of the computation for the
current group is added to the result of the previous group and returned.
`
In mathematical terms:

* f_n is the result of the aggregation function for group i
* g_n is the result of the incremental aggregation function for group i
* g_n = sum of f_i for all values of i between 0 and n

Incremental function is:

* ``INCREMENTAL``. For example: ``INCREMENTAL(SUM(fiel))``


Group by functions
------------------

Used to split ``aggregates`` results by field values.
``group_by`` attribute takes a list of group_by expressions.
The result will be sorted, depending of group_by field values.
For instance ``group_by[store_country, store_name]`` will return :

.. code-block:: js

    [
        // ...
        {
            "store_country": "France",
            "store_name": "Celio",
            // ...
        },
        {
            "store_country": "France",
            "store_name": "Naf-Naf",
            // ...
        },
        {
            "store_country": "USA",
            "store_name": "Nike",
            // ...
        },
        {
            "store_country": "USA",
            "store_name": "Reebok",
            // ...
        },
        // ...
    ]

A group_by name needs to be set for complex group_by expression (date or range).
A valid name is composed of lower chars [a-z] and digit [0-9] and ``_``.
The group_by expression becomes a dict containing aggregation name and aggregation expression:

Example:

.. code-block:: js

    {
        "group_by" = [{
            "name": "year",
            "expr": "format_date(my_date_field, 'YYYY')"
        }]
    }

Simple field
~~~~~~~~~~~~

Group by all field values.
For instance ``group_by:[field_name]`` group by ``aggregates`` functions by every values of ``field_name`` field.

..
    Geo functions
    ~~~~~~~~~~~~~

    * ``cluster(geometries, zoom, distance, return_convex_hull)`` Build a cluster from a group of rows.

        Return value:

    .. code-block:: json

            {
                "center": [latitude, longitude],
                "convex_hull": // a polygon geometry
            }

    Arguments:

    * ``geometries`` either the name of field containing geodata or litteral geodata
    * ``zoom`` the zoom level of the map representation
    * ``distance`` the minimum d`istance (in px) between two adjacents clusters in the map representation
    * ``return_convex_hull`` is a boolean (default: false) telling whether the cluster should include its convex hull, its
    polygon enveloppe, alongside the center.

    * ``convex_hull(geometries)`` Return the convex hull (ie the envelopping convex shape) of the geometries

        Arguments:

        * ``geometries`` either the name of field containing geodata or litteral geodata

    * ``geodigest(geometry)`` Return the geodigest (ie the hash) of the geometry for easy matching.

        Arguments:
        * ``geometry`` a geo shape or a the name of a field containing geo shapes.

    * ``geogrid(geometry)`` Return the geohash id of the grid the geometry falls in.

        Arguments:
        * ``geometry`` a geo point or a the name of a field containing geo points.

    * ``BBOX(geometries)`` return the bounding box of all of the geometries

        Arguments:
        * ``geometries`` can be either a litteral geometry list or the name of a field (in an aggregate)

Date functions
~~~~~~~~~~~~~~

* ``date(myfield, format)`` Format a date object

    Arguments:

    * ``myfield`` a date/datetime field
    * ``format`` a string (see below for accepted values)

    Example:

    * format_date(myfield, 'yyyy-MM-dd HH:mm:ss')

    Format options:

    The ``date`` method is a wrapper for http://joda-time.sourceforge.net/apidocs/org/joda/time/format/DateTimeFormat.html and therefore accepts the same inputs.

    * *G* era (text) example: AD
    * *C* century of era (>=0) (number) example: 20
    * *Y* year of era (>=0) (year) example: 1996
    * *x* weekyear (year) example: 1996
    * *w* week of weekyear (number) example: 27
    * *e* day of week (number) example: 2
    * *E* day of week (text) example: Tuesday; Tue
    * *y* year (year) example: 1996
    * *D* day of year (number) example: 189
    * *M* month of year (month) example: July; Jul; 07
    * *d* day of month (number) example: 10
    * *a* halfday of day (text) example: PM
    * *K* hour of halfday (0~11) (number) example: 0
    * *h* clockhour of halfday (1~12) (number) example: 12
    * *H* hour of day (0~23) (number) example: 0
    * *k* clockhour of day (1~24) (number) example: 24
    * *m* minute of hour (number) example: 30
    * *s* second of minute (number) example: 55
    * *S* fraction of second (number) example: 978
    * *z* time zone (text) example: Pacific Standard Time; PST
    * *Z* time zone offset/id (zone) example: -0800; -08:00; America/Los_Angeles
    * *'* escape for text (delimiter)
    * *''* single quote (literal) example: '

    The count of pattern letters determine the format.

    * *Text* If the number of pattern letters is 4 or more, the full form is used; otherwise a short or abbreviated form is used if available.
    * *Number* The minimum number of digits. Shorter numbers are zero-padded to this amount.
    * *Year* Numeric presentation for year and weekyear fields are handled specially. For example, if the count of 'y' is 2, the year will be displayed as the zero-based year of the century, which is two digits.
    * *Month* 3 or over, use text, otherwise use number.
    * *Zone* 'Z' outputs offset without a colon, 'ZZ' outputs the offset with a colon, 'ZZZ' or more outputs the zone id.
    * *Zone names* Time zone names ('z') cannot be parsed.

    Any characters in the pattern that are not in the ranges of ['a'..'z'] and ['A'..'Z'] will be treated as quoted text. For instance, characters like ':', '.', ' ', '#' and '?' will appear in the resulting time text even they are not embraced within single quotes.


**Example:**

.. code-block:: js

    {
        "aggregations": {
            "my_aggregation": { // name of this aggregation, used to multiplex multiple aggregations
                "group_by": [
                    {
                        "name": "year_month",
                        "expr": "date(sales_date, 'YYYY-MM')"
                    }
                ],
                "aggregates": {
                    "total_sales_count": "SUM(sales_count)"
                }
            }
        }
    }

Range functions
~~~~~~~~~~~~~~~

The following functions all perform discretization functions on the dataset's values.

In all of them, ``myfield`` is an integer or decimal field.

* ``range(myfield, equi(num_ranges, lowest_boundary, highest_boundary))``

    Divides the [lowest_boundary, highest_boundary] global value interval in num_ranges equally wide sub ranges.

    If lowest_boundary (resp. highest_boundary) is not set, then the lowest_boundary (resp. highest_boundary) of the
    global interval  will be the  minimum (resp. maximum) value of the dataset.

    If lowest_boundary (resp. highest_boundary) is higher (resp. lower) than the mininum (resp. maximum) value of the
    dataset, an additional sub range [min_value; lowest_boundary[ (resp. [highest_boundary; max_value]) will be added
    to the num_ranges sub-ranges.

    Arguments:

    * ``myfield`` **required** a decimal field
    * ``num_ranges`` **required** number of ranges to create from the values
    * ``lowest_boundary`` **optional** lowest boundary of the num_ranges ranges
    * ``highest_boundary`` **optional** highest boundary of the num_ranges ranges

    Example:
    myfield values are [ -5, -2, -1, 0, 3, 4, 5, 120]

    * ``range(myfield, equi(5))`` will create the subranges

        * [-5; 20[``
        * [20; 45[
        * [45; 70[
        * [70; 95[
        * [95; 120]

    * ``range(myfield, equi(5, lowest_boundary=0))`` will create the subranges

        * [-5; 0[
        * [0; 24[
        * [24; 48[
        * [48; 72[
        * [72; 96[
        * [96; 120]

    * ``range(myfield, equi(5, highest_boundary=10))`` will create the subranges

        * [-5; -2[
        * [-2; 1[
        * [1; 4[
        * [4; 7[
        * [7; 10[
        * [10; 120]

    * ``range(myfield, equi(5, lowest_boundary=0, highest_boundary=10))`` will create the subranges

        * [-5; 0[
        * [0; 2[
        * [2; 4[
        * [4; 6[
        * [6; 8[
        * [8; 10[
        * [10; 120]

* ``range(myfield, static(divisions))``

    Divides the full range of myfield values in sub ranges delimited by the values set in divisions.

    If the minimum (resp. maximum) existing value of myfield in lower (resp. higher) than the lowest (resp. highest)
    division value, an additional range will be added so that all of myfield values are accounted for.

    Arguments:

    * ``myfield`` **required** a decimal field
    * ``division`` **required** an ordered (ASC) list of decimal values

    Example:
    myfield values are [ -5, -2, -1, 0, 3, 4, 5, 120]

    * ``range(myfield, static([-1000, -10, -1, 0, 1, 10, 1000]))`` will create the sub ranges

        * [-1000; -10[
        * [-10; -1[
        * [-1; 0[
        * [0; 1[
        * [1; 10[
        * [10; 1000]

    * ``range(myfield, static([-10, 0, 10]))`` will create the sub ranges

        * [-10; 0[
        * [0; 10[
        * [10; 120[

    * ``range(myfield, static([0, 10, 100, 1000]))`` will create the sub ranges

        * [-10; 0[
        * [0; 10[
        * [10; 100[
        * [100; 1000]

* ``range(myfield, percentile())`` Return the number of the percentile within which myfield's value lies. (default: [1, 5, 25, 50, 75, 95, 99])
* ``range(myfield, median())`` Return the number of the median within which myfield's value lies.
* ``range(myfield, decile())`` Return the number of the decile within which myfield's value lies. (1 to 10)
* ``range(myfield, quartile())`` Return the number of the quartile within which myfield's value lies. (1 to 4)
