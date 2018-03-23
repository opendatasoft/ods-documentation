DB.nomics harvester
=========================

Retrieve one or more datasets from `DB.nomics <https://db.nomics.world/>`_.

A dataset is an aggregation of time series. Using the provider name and the dataset ID, it is possible to either fetch each of these time series individually as one OpenDataSoft dataset or keep them aggregated in a single OpenDataSoft dataset.

A dataset ID follows the following format *ProviderName-DatasetId*.

.. admonition:: Retrieving the dataset ID
   :class: important

   Retrieve the dataset id using the `explorer <https://db.nomics.world/views/explorer>`_.
   Select a provider, the dataset to retrieve and click on API Link > JSON.
   A link following this format will appear :
   https://api.db.nomics.world/api/v1/json/datasets/bea-fa2004-section1-101-a/values

   In this example, the dataset ID is : **bea-fa2004-section1-101-a**




Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Dataset
     * The comma separated list of dataset IDs you want to harvest.
     * eurostat-earn-ses06-01, ameco-adggi, ...
   * * Aggregates the series in a single dataset.
     * Aggregate SDMX series into a single SDMX dataset.
     *
