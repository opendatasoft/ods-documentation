Configuring a source
====================

Any dataset is based on at least one source, which contains data. When this source (no matter if it is a file, an API or any other supported source type) is pushed into the platform, the latter will automatically use a connector to be able to read and understand it. Making sure of that is actually the first thing that should be done when creating a new dataset: the preview should be completely readable, meaning that the source should be perfectly configured.

In the OpenDataSoft platform, the configuration of a dataset source is done in the Source tab of the edition interface of each dataset.

The configuration options of a source entirely depend on the source type, and both the way the source has been added to the dataset and the format of that source matter to determine that type. In the table below is the complete list of all existing and available connectors associated with their matching source types. Check both information then click the link on the connector name to find out about all related configuration options.


.. list-table::
  :header-rows: 1

  * * Name
    * Description & Supported formats
    * Availability
  * * :doc:`ArcGIS<connectors/arcgis>`
    * Used for data extracted from an ArcGIS server.
    * Default
  * * :doc:`CSV<connectors/geojoin>`
    * Used for CSV (.csv), TSV (.tsv), Text (.txt) and DAT (.dat) files.
    * Default
  * * :doc:`GeoJSON<connectors/geojoin>`
    * Used for GeoJSON (.geojson) files.
  * * :doc:`JCDecaux<connectors/geojoin>`
    * Used to retrieve the state of JCDecaux bike stations.
    * On demand
  * * :doc:`JSON<connectors/geojoin>`
    * ...
  * * :doc:`kml<connectors/geojoin>`
    * Used for KML (.kml) and KMZ (.kmz) files.
    * Default
  * * :doc:`mapinfo<connectors/geojoin>`
    * ...
  * * :doc:`netatmo<connectors/geojoin>`
    * ...
  * * :doc:`osm<connectors/geojoin>`
    * ...
  * * :doc:`Salesforce<connectors/geojoin>`
    * ...
  * * :doc:`ShapeFile<connectors/geojoin>`
    * ...
  * * :doc:`spreadsheet<connectors/geojoin>`
    * ...
  * * :doc:`wfs<connectors/geojoin>`
    * ...
  * * :doc:`xmlconnectors/geojoin>`
    * ...
  * * :doc:`...<connectors/geojoin>`
    * ...
