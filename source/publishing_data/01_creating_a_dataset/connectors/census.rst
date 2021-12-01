US Census connector
===================

The US Census connector is used for data extracted from the US Census Bureau's REST API.

Creation
--------

1. Find the API Base URL of the census dataset (https://api.census.gov/data.html). If you want to, you can use an API URL with a valid query (see https://www.census.gov/data/developers/guidance/api-user-guide.Overview.html for documentation)


.. admonition:: Note
   :class: note

    Example 1: 
        For the dataset *Vintage 2014 Population Estimates: US, State, and PR Total Population and Components of Change*, the API Base URL is ``https://api.census.gov/data/2014/pep/natstprc`` .
    Example 2: 
        For the dataset *International Trade: Monthly U.S. Exports by End-Use Code*, an API URL is ``https://api.census.gov/data/timeseries/intltrade/exports/enduse?get=ALL_VAL_YR&time=2013-01&E_ENDUSE=00100`` .

2. Enter the URL in the Enter a URL area when creating a new dataset.
3. Press Enter or click the + button.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example 1
     * Example 2
   * * Dataset path
     * The path is extracted from the URL area
     * 2014/pep/natstprc
     * timeseries/intltrade/exports/enduse
   * * Variables
     * The list of variables to extract. If the URL contains a query, the variables are extracted from it. If the area is left empty, the number of variables in the dataset is less than 50, and the required predicates filled, the connector will extract the whole dataset. Else, the area should at least be filled with required fields (see the dataset documentation).
     * Can be left empty
     * Can be: ``ALL_VAL_YR`` is extracted from the URL
   * * Predicates
     * The list of predicates to filter the dataset. If the URL contains a query the predicates are extracted from it.  If the area is left empty, the number of variables in the dataset is less than 50, and the required predicates filled, the connector will extract the whole dataset. The area should at least be filled with required predicates (see the dataset documentation).
     * ``for=state:*`` (a ``for`` predicates is required)
     * ``time=2013-01`` and ``E_ENDUSE=00100`` are extracted from the URL
   * * API Key
     * Use an API key to override the Census API limit (500 queries per day). If the URL contains an API key, the key is extracted from it.
     *
     * No API key is filled


.. admonition:: Note
  :class: note

    If too many fields are called during the extraction, it can result in a connection Timeout to the US Census servers. Reducing the number of variables or the use of the ``group()`` function should prevent this issue.