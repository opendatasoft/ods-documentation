Configuring a source
====================

Most of the time, datasets are based on at least one source, which contains data. When this source (no matter if it is a file, an API or any other supported source type) is uploaded, the platform will automatically use a connector to be able to read and understand that source. When creating a new dataset, it is important to make sure that the preview is completely readable: it means that the source of the dataset has been well understood and configured.

In the OpenDataSoft platform, the configuration of a dataset source is done in the Source tab of the edition interface of each dataset.

The configuration options of a source entirely depend on the source type, and both the way the source has been added to the dataset and the format of that source matter to determine that type. In the table below are listed the existing and available connectors, associated with their matching source types. Check both columns, then click the link on the connector name to find out about all related configuration options.


.. toctree::
   :hidden:

   connectors/arcgis
   connectors/csv
   connectors/dataset_of_datasets
   connectors/geojson
   connectors/jcdecaux
   connectors/json
   connectors/kml
   connectors/mapinfo
   connectors/netatmo
   connectors/osm
   connectors/salesforce
   connectors/shapefile
   connectors/spreadsheet
   connectors/wfs
   connectors/xml


.. list-table::
  :header-rows: 1

  * * Name
    * Description & Supported formats
    * Availability
  * * :doc:`ArcGIS<connectors/arcgis>`
    * Used for data extracted from an ArcGIS server
    * Default
  * * :doc:`CSV<connectors/csv>`
    * Used for CSV (.csv), TSV (.tsv), Text (.txt) and DAT (.dat) files
    * Default
  * * :doc:`Dataset of datasets<connectors/dataset_of_datasets>`
    * Used to create a dataset from the catalog of an OpenDataSoft domain
    * Default
  * * :doc:`GeoJSON<connectors/geojson>`
    * Used for GeoJSON (.geojson) files
    * Default
  * * :doc:`JCDecaux<connectors/jcdecaux>`
    * Used to retrieve the state of JCDecaux bike stations
    * On demand
  * * :doc:`JSON<connectors/json>`
    * Used for JSON (.json) files
    * Default, except for JSON Dict
  * * :doc:`KML<connectors/kml>`
    * Used for KML (.kml) and KMZ (.kmz) files
    * Default
  * * :doc:`MapInfo<connectors/mapinfo>`
    * Used for MapInfo ZIP archives
    * Default
  * * :doc:`Netatmo<connectors/netatmo>`
    * Used to retrieve data from the Netatmo API
    * On demand
  * * :doc:`OSM<connectors/osm>`
    * Used for OpenStreetMap archives (.osm)
    * Default
  * * :doc:`Salesforce<connectors/salesforce>`
    * Used to retrieve data from the Salesforce API
    * On demand
  * * :doc:`Shapefile<connectors/shapefile>`
    * Used for Shapefiles
    * Default
  * * :doc:`Spreadsheet<connectors/spreadsheet>`
    * Used for spreadsheet files (.xls, .xlsx, .ods)
    * Default
  * * :doc:`WFS<connectors/wfs>`
    * Used to retrieve data from a WFS service
    * On demand
  * * :doc:`XML<connectors/xml>`
    * Used for XML (.xml) files
    * Default
