FRED harvester
======================

Retrieve datasets from the `Federal Reserve Bank of St. Louis <https://fred.stlouisfed.org/>`_.

.. admonition:: Disclaimer
  :class: caution

   This product uses the FRED® API but is not endorsed or certified by the Federal Reserve Bank of St. Louis.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * FRED API key
     * Your own `FRED API key <https://research.stlouisfed.org/docs/api/api_key.html>`_
     * abcdefghijklmnopqrstuvwxyz123456
   * * Query
     * Can be either a dataset ID or a query to match series against
     * PAYEMS, employment
   * * Number of datasets
     * The number of datasets that will be harvested. If no value is set, all datasets will be harvested (up to 1000).
     * 10
