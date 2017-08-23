Supported formats
=================

.. note::
    File formats support can be extended to match specific requirements (for instance, to support a complex XML DTD or a non standard flat file format). Contact your local support team if you need more information on file formats support extension.

.. toctree
   :hidden:

..   connectors/csv
   connectors/geojson
   connectors/json
   connectors/kml
   connectors/mapinfo
   connectors/netatmo
   connectors/osm
   connectors/shapefile
   connectors/spreadsheet
   connectors/xml

Supported file formats
----------------------

The following table lists the supported format and describes configuration options for each format:

.. list-table::
   :header-rows: 1

   * * Format
     * Extensions
     * Description
     * Options
   * * CSV
     * .csv, .tsv, .txt, .dat
     * The classic Coma Separated Value file.
     *
        :doc:`connectors/csv`
   * * Microsoft Excel
     * .xls, .xlsx
     *
     *
       :doc:`connectors/spreadsheet`
   * * OpenDocument SpreadSheet
     * .ods
     *
     *
       :doc:`connectors/spreadsheet`
   * * JSON
     * .json
     * Simple JSON documents are supported. The platform lets you choose the root path (path to the table of elements
       to be considered as rows) and the properties path (path to the dictionary holding the list of fields for an
       element).
     *
       :doc:`connectors/json`
   * * GeoJSON
     * .json, .geojson
     *
     *
       :doc:`connectors/geojson`
   * * KML/KMZ
     * .kml, .kmz
     *
     *
       :doc:`connectors/kml`
   * * Shapefile
     *  .zip
     * A zip archive containing at least the following files: <NAME>.shp, <NAME>.dbf, <NAME>.prj
     *
       :doc:`connectors/shapefile`
   * * MapInfo
     * .zip
     * A zip archive containing either <NAME>.mid and <NAME>.mif files or <NAME>.map, <NAME>.tab, <NAME>.id and
       <NAME>.dat
     *
       :doc:`connectors/mapinfo`
   * * OpenStreetMap
     * .osm
     *
     *
       :doc:`connectors/osm`
   * * XML
     * .xml
     *
     *
       :doc:`connectors/xml`

.. _supportedcompressedformats:

Supported compressed file formats
---------------------------------

Listed below are the compressed files formats supported by the platform:

* .zip
* .bz2
* .tar
* .gz
* .gzip
* .tar.gr
* .tgz
* .tar.bz2
