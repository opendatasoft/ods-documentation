US Census connector
===================

The US Census connector is used for data extracted from the US Census Bureau's REST API.

Creation
--------

1. Find the path of the census dataset (https://api.census.gov/data.html):

    - if it is an aggregate dataset, the dataset path fits this format : ``vintage/dataset_name`` where words of the dataset name are separated by /.
    - else, the dataset path fits this format : ``dataset_name`` where words of the dataset name are separated by /.


.. admonition:: Note
   :class: note

    Example 1 : 
        For the dataset *Vintage 2014 Population Estimates: US, State, and PR Total Population and Components of Change*, the path is ``2014/pep/natstprc`` .
    Example 2 : 
        For the dataset *International Trade: Monthly U.S. Exports by End-Use Code*, the path is ``timeseries/intltrade/exports/enduse`` .

2. Enter the ``census://`` followed with the dataset path to the layer in the Enter a URL area, when creating a new dataset (e.g. ``census://2014/pep/natstprc`` or ``census://timeseries/intltrade/exports/enduse``).
3. Press Enter, or click the + button.

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
     * The list of variables to extract. If the area is left empty and the number of variables in the dataset is less than 14, the connector will extract all the dataset. Else, the area should at least be filled with required fields (see the dataset documentation).
     * Can be left empty
     * Can be : ``DISTRICT,DIST_NAME,ALL_VAL_MO,ALL_VAL_YR`` (TIME and YEAR are required but used for predicates in this example)
   * * Predicates
     * This area should be filled with at least required predicates (see the dataset documentation)
     * ``for=state:*`` (a ``for`` predicates is required)
     * ``TIME=2016`` and ``MONTH=06`` (no predicates are required but the dataset can be filtered)
   * * API Key
     * Use an API key to overide the Census API limit (500 queries per day)
     *
     *