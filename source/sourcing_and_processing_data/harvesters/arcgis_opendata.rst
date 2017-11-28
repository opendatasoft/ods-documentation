ArcGIS Hub Portals harvester
============================

Retrieve datasets from portals listed on ArcGIS Hub.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * API url (portal_url)
     * The base URL of the portal
     * http://cassini.apur.opendata.arcgis.com/
   * * Compute geographical area (compute_geo_area)
     * If set, automatically computes the geographic area covered by the dataset ("Geographic area" option in the publish interface information tab)
     * True/False
   * * Process data (fetch_data)
     * Download the data if true, else only download metadata and link to actual data
     * True/False
