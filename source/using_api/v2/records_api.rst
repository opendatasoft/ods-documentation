Dataset Records APIs
====================


Record Lookup API
-----------------

This API makes it possible to fetch an individual record using its identifier (Record ID).

**API endpoint**: ``/api/v2/catalog/datasets/<DATASETID>/records/<RECORDID>``

**Query**

.. list-table::
   :header-rows: 1

   * * Parameter Name
     * Description
   * * ``datasetid``
     * Part of the URL path. Identifier of the dataset. Example:
       ``http://opendata.paris.fr/api/v2/catalog/datasets/arbresremarquablesparis2011/``
   * * ``recordid``
     * Part of the URL path. Identifier of the record. Example:
       ``http://opendata.paris.fr/api/v2/catalog/datasets/<DATASETID>/records/758885b5183fd28f14ecf39e44484fdccf/``
   * * ``vf``
     * Define a virtual field. This field is returned in ``virtual_field`` section of the result.
   * * ``pretty_print``
     * If set to true (default is false), pretty prints JSON and JSONP outputs.
   * * ``export_as``
     * Export record to the specified format. One of json, csv, citadel, geojson, xls or shapefile.
   * * ``callback``
     * JSONP callback. Example: ``format=jsonp&callback=myFunction``

Record Search API
-----------------

This API makes it possible to perform complex queries on the records of a dataset, such as full-text search or geo
search. It also provides faceted search features on dataset records.

**API endpoint**: ``/api/v2/catalog/datasets/<DATASETID>/records``

**Query**

.. list-table::
   :header-rows: 1

   * * Parameter Name
     * Description
   * * ``datasetid``
     * Part of the URL path. Identifier of the dataset. Example:
       ``http://opendata.paris.fr/api/v2/catalog/datasets/arbresremarquablesparis2011/``
   * * ``q``
     * The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set
       occurs.
   * * ``sort``
     * Sorts results according to the specified field. By default, the sort is descending (from the highest value to the
       smallest value). A minus sign ('-') may be used to perform an ascending sort. Sorting is only available on
       numeric fields (int, double, date and datetime) and on text fields which have the ``sortable``  annotation.
       Examples: ``sort=price`` , ``sort=-width``
   * * ``vf``
     * Define a virtual field. This field is returned in ``virtual_field`` section of the result. It can also be used in sort parameter.
   * * ``rows``
     * Number of results to return in a single call. -1 returns all values. By default, 10 results are returned.
   * * ``start``
     * Index of the first result to return (starting at 0). To be used in conjunction with "rows" to implement paging.
   * * ``pretty_print``
     * If set to true (default is false), pretty prints JSON and JSONP outputs.
   * * ``export_as``
     * Export record to the specified format. One of json, csv, citadel, geojson, xls or shapefile.
   * * ``callback``
     * JSONP or GeoJSONP callback. Example: ``format=jsonp&callback=myFunction``
