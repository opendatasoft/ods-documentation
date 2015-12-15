Dataset Catalog APIs
====================

Dataset Lookup API
------------------

This API makes it possible to fetch an individual dataset information.

**API endpoint**: ``/api/v2/catalog/datasets/<DATASETID>``

**Query**

.. list-table::
   :header-rows: 1

   * * Parameter Name
     * Description
   * * ``datasetid``
     * Part of the URL path. Identifier of the dataset. Example:
       ``http://<DOMAIN_ID>/api/v2/catalog/datasets/arbresremarquablesparis2011?...``
   * * ``pretty_print``
     * If set to true (default is false), pretty prints JSON and JSONP outputs.
   * * ``export_as``
     * Export Catalog to the specified format. One of json, csv, rss or rdf.
   * * ``vf``
     * Define a virtual field. This field is returned in ``virtual_field`` section of the result.
   * * ``callback``
     * JSONP callback. Example: ``format=jsonp&callback=myFunction``

Dataset Search API
------------------

This API provides a search facility in the dataset catalog. Full text search as well as multi-criteria field queries
are made possible and results facetting is provided as well.

**API endpoint**: ``/api/v2/catalog/datasets``

**Query**

.. list-table::
   :header-rows: 1

   * * Parameter Name
     * Description
   * * ``q``
     * Query parameter to filter results. See query language v2 section for more information.
   * * ``sort``
     * Sorts results according to the specified field (the sortable fields for the dataset search API are:
       ``modified``, ``issued``, ``created`` and ``records_count``). By default, the sort is descending (from the
       highest value to the smallest value). A minus sign ('-') may be used to perform an ascending sort. Examples:
       ``sort=issued``, ``sort=-issued``
   * * ``vf``
     * Define a virtual field. This field is returned in ``virtual_field`` section of the result. It can also be used in sort parameter.
   * * ``rows``
     * Number of results to return in a single call. -1 returns all values. By default, 10 results are returned.
   * * ``start``
     * Index of the first result to return (starting at 0). To be used in conjunction with "rows" to implement paging.
   * * ``pretty_print``
     * If set to true (default is false), pretty prints JSON and JSONP outputs.
   * * ``export_as``
     * Export Catalog to the specified format. One of json, csv, rss or rdf.
   * * ``callback``
     * JSONP callback. Example: ``format=jsonp&callback=myFunction``
