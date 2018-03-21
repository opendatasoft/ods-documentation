db.nomics harvester
=========================

Retrieve one or more datasets from `DB.nomics <https://db.nomics.world/>`_.

A dataset id follows the following format *organization_id-dataset_id*.

You can retrieve the dataset id using the `explorer <https://db.nomics.world/views/explorer>`_.

A dataset is an aggregation of time series. It is possible to either fetch each of these time series individually as one OpenDataSoft dataset or keep them aggregated in a single OpenDataSoft dataset.


Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Dataset IDs
     * The comma separated list of dataset IDs you want to harvest.
     * eurostat-earn-ses06-01, ameco-adggi, ...
   * * Aggregate series
     * Aggregate SDMX series into a single SDMX dataset.
     *
