Configuring sources
===================

Apart from retrieving a dataset published with Opendatasoft, you can add a source to a dataset in the following ways:

- Retrieving a file from your computer, a URL, or an FTP server
- Configuring a remote service to read and retrieve data using a connector

When you create a dataset, you start with configuring a source and its connection.
For FTP, Google Drive, HTTP, and SharePoint, you can select a saved connection or configure a new connection.

After you create a dataset, you can add a new source, or edit an existing source and its connection using the **Sources** tab of the desired dataset.

Files
-----

Opendatasoft supports a variety of file formats.

.. list-table::
  :header-rows: 1
  :widths: 15 25 10

  * * File format
    * File extension
    * Availability
  * * :doc:`CSV<connectors/csv>`
    * .csv, .tsv, .txt, .dat
    * Default
  * * :doc:`GeoJSON<connectors/geojson>`
    * .geojson
    * Default
  * * :doc:`JSON<connectors/json>`
    * .json
    * Default
  * * :doc:`KML<connectors/kml>`
    * .kml, .kmz
    * Default
  * * :doc:`MapInfo<connectors/mapinfo>`
    * .zip
    * Default
  * * :doc:`Microsoft Excel<connectors/spreadsheet>`
    * .xls, .xlsx
    * Default
  * * :doc:`OpenDocument Spreadsheet<connectors/spreadsheet>`
    * .ods
    * Default
  * * :doc:`OpenStreetMap archives<connectors/osm>`
    * .osm
    * Default
  * * :doc:`RDF<connectors/rdf>`
    * .rdf
    * Default
  * * :doc:`Shapefile<connectors/shapefile>`
    * .zip
    * Default
  * * :doc:`XML<connectors/xml>`
    * .xml
    * Default

.. toctree::
   :hidden:

   connectors/csv
   connectors/geojson
   connectors/json
   connectors/kml
   connectors/mapinfo
   connectors/osm
   connectors/rdf
   connectors/shapefile
   connectors/spreadsheet
   connectors/xml

Connectors to remote services
-----------------------------

Opendatasoft can connect to a variety of remote services.

.. admonition:: Important
  :class: important

  Contact your local support team to get on-demand connectors activated on your domain.

.. list-table::
  :header-rows: 1
  :widths: 15 25 10

  * * Connector
    * Description
    * Availability
  * * :doc:`Airtable<connectors/airtable>`
    * Retrieves data from an Airtable base
    * Default
  * * :doc:`ArcGIS<connectors/arcgis>`
    * Retrieves data from an ArcGIS server
    * Default
  * * :doc:`Census<connectors/census>`
    * Retrieves data using the US Census Bureau's API
    * On demand
  * * :doc:`Dataset of datasets<connectors/dataset_of_datasets>`
    * Creates a dataset from the catalog of an Opendatasoft domain
    * Default
  * * :doc:`Eco Counter<connectors/ecocounter>`
    * Retrieves data about Eco Counter counters and counting sites
    * On demand
  * * :doc:`Feed<connectors/feed>`
    * Retrieves data from Atom and RSS feeds
    * Default
  * * :doc:`Google Drive<connectors/google_drive>`
    * Retrieves files located in Google Drive
    * Default
  * * :doc:`JCDecaux<connectors/jcdecaux>`
    * Retrieves the state of JCDecaux bike stations
    * On demand
  * * :doc:`Netatmo<connectors/netatmo>`
    * Retrieves data using the Netatmo API
    * On demand
  * * :doc:`OpenAgenda<connectors/openagenda>`
    * Retrieves events from OpenAgenda agendas
    * On demand
  * * :doc:`Realtime<connectors/realtime>`
    * Pushes real-time data to the platform
    * On demand
  * * :doc:`Salesforce<connectors/salesforce>`
    * Retrieves data using the Salesforce API
    * On demand
  * * :doc:`SharePoint<connectors/sharepoint>`
    * Retrieves files located in SharePoint
    * Default
  * * :doc:`WFS<connectors/wfs>`
    * Retrieves data from a WFS service
    * On demand

.. toctree::
   :hidden:

   connectors/airtable
   connectors/arcgis
   connectors/census
   connectors/dataset_of_datasets
   connectors/ecocounter
   connectors/feed
   connectors/google_drive
   connectors/jcdecaux
   connectors/netatmo
   connectors/openagenda
   connectors/realtime
   connectors/salesforce
   connectors/sharepoint
   connectors/wfs
