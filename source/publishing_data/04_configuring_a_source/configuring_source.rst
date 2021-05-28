Configuring data sources
========================

When adding a data source to a dataset, the Opendatasoft platform uses a connector to read and retrieve data.

When you create a dataset, you start with configuring a data source and its connection. For FTP, Google Drive, HTTP, and Microsoft SharePoint, you can select a saved connection or configure a new connection.

After you create a dataset, you can add a new data source, or edit an existing data source and its connection using the **Sources** tab of the desired dataset.

The following tables include the connectors available on the Opendatasoft platform.

.. admonition:: Note
   :class: note

   Opendatasoft can develop and integrate customer-specific Web APIs. Opendatasoft connectivity toolkit makes it possible to develop performant and secured connectors supporting incremental data processing.


File connectors
---------------

.. list-table::
  :header-rows: 1

  * * Connector
    * Description & Supported formats
    * Availability
  * * :doc:`CSV<connectors/csv>`
    * Used for CSV (.csv), TSV (.tsv), Text (.txt) and DAT (.dat) files
    * Default
  * * :doc:`GeoJSON<connectors/geojson>`
    * Used for GeoJSON (.geojson) files
    * Default
  * * :doc:`JSON<connectors/json>`
    * Used for JSON (.json) files
    * Default
  * * :doc:`KML<connectors/kml>`
    * Used for KML (.kml) and KMZ (.kmz) files
    * Default
  * * :doc:`MapInfo<connectors/mapinfo>`
    * Used for MapInfo ZIP archives
    * Default
  * * :doc:`OSM<connectors/osm>`
    * Used for OpenStreetMap archives (.osm)
    * Default
  * * :doc:`Shapefile<connectors/shapefile>`
    * Used for Shapefiles
    * Default
  * * :doc:`Spreadsheet<connectors/spreadsheet>`
    * Used for spreadsheet files (.xls, .xlsx, .ods)
    * Default
  * * :doc:`XML<connectors/xml>`
    * Used for XML (.xml) files
    * Default

.. toctree::
   :hidden:

   connectors/csv
   connectors/geojson
   connectors/json
   connectors/kml
   connectors/mapinfo
   connectors/osm
   connectors/shapefile
   connectors/spreadsheet
   connectors/xml

Connectors to remote services
-----------------------------

.. list-table::
  :header-rows: 1

  * * Connector
    * Description & Supported formats
    * Availability
  * * :doc:`Airtable<connectors/airtable>`
    * Used for data extracted from an Airtable base
    * Default
  * * :doc:`ArcGIS<connectors/arcgis>`
    * Used for data extracted from an ArcGIS server
    * Default
  * * :doc:`Census<connectors/census>`
    * Used for data extracted from the US Census Bureau's API
    * On demand
  * * :doc:`Dataset of datasets<connectors/dataset_of_datasets>`
    * Used to create a dataset from the catalog of an Opendatasoft domain
    * Default
  * * :doc:`Eco Counter<connectors/ecocounter>`
    * Used to retrieve about Eco Counter counters and counting sites
    * On demand
  * * :doc:`Feed<connectors/feed>`
    * Used to retrieve Atom and RSS feeds
    * On demand
  * * :doc:`JCDecaux<connectors/jcdecaux>`
    * Used to retrieve the state of JCDecaux bike stations
    * On demand
  * * :doc:`Netatmo<connectors/netatmo>`
    * Used to retrieve data from the Netatmo API
    * On demand
  * * :doc:`OpenAgenda<connectors/openagenda>`
    * Used to retrieve events from OpenAgenda agendas
    * On demand
  * * :doc:`WFS<connectors/realtime>`
    * Used to push real-time data
    * On demand
  * * :doc:`Salesforce<connectors/salesforce>`
    * Used to retrieve data from the Salesforce API
    * On demand
  * * :doc:`SharePoint<connectors/sharepoint>`
    * Used to retrieve files located in SharePoint
    * Default
  * * :doc:`WFS<connectors/wfs>`
    * Used to retrieve data from a WFS service
    * On demand

.. admonition:: Important
   :class: important

   Contact your local support team to get on-demand connectors activated on your domain.

.. toctree::
   :hidden:

   connectors/airtable
   connectors/arcgis
   connectors/census
   connectors/dataset_of_datasets
   connectors/ecocounter
   connectors/feed
   connectors/jcdecaux
   connectors/netatmo
   connectors/openagenda
   connectors/realtime
   connectors/salesforce
   connectors/sharepoint
   connectors/wfs
