Searching in the data
=====================

.. list-table::
   :header-rows: 1

   * * Search for records
     * Query
     * Example (based on ods-api-monitoring dataset)
     * Result
   * * containing a value
     * value
     * ``explore``
     * returns every record containing the string explore
   * * containing a value in a specific field
     * id_field:value
     * ``action:explore``
     * returns every record containing the string explore in the column named action
   * * containing several values
     * value1 AND value2
     * ``explore AND search``
     * returns every record containing both explore and search
   * * containing at least one of the values
     * value1 AND value2
     * ``action OR explore``
     * returns every record containing either explore or search
   * * not containing a value
     * NOT value
     * ``NOT anonymous``
     * returns every record which does not contain the string anonymous
   * * containing an exact value in a field
     * #exact(id_field,"value")
     * ``#exact(user_id,"anonymous")``
     * returns every record containing the exact string anonymous in the column named user_id
   * * if a field is empty
     * #null(id_field)
     * ``#null(referer)``
     * returns every record which has no value in the column named referer
   * * where a date's field is anterior to a value
     * id_date_field<=YYYY/MM/DD
     * ``timestamp<=2016/09``
     * returns every record with a timestamp prior and equal to September 2016
   * * where a date's field is the current date minus a period
     * id_date_field>#now(days=-value)
     * ``timestamp>#now(days=-7)``
     * returns every record with a timestamp equal to current day minus 7 days
   * * containing a geo field located in a specific area
     * #distance("latitude,longitude",distance)
     * ``#distance(48.866667,2.333333,1000)``
     * returns every record located at 1 km from the center of Paris
