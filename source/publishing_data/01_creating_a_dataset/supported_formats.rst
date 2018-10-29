Supported formats
=================

.. admonition:: Note
   :class: note

   File formats support can be extended to match specific requirements (for instance, to support a complex XML or a non standard flat file format). Contact your local support team if you need more information on file formats support extension.

Supported file formats
----------------------

The following table lists the supported formats. Click the link on each connector name to know more about their available configuration options.

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
        :doc:`/publishing_data/04_configuring_a_source/connectors/csv`
   * * Microsoft Excel
     * .xls, .xlsx
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/spreadsheet`
   * * OpenDocument SpreadSheet
     * .ods
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/spreadsheet`
   * * JSON
     * .json
     * Simple JSON documents are supported. The platform lets you choose the root path (path to the table of elements
       to be considered as rows) and the properties path (path to the dictionary holding the list of fields for an
       element).
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/json`
   * * GeoJSON
     * .json, .geojson
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/geojson`
   * * KML/KMZ
     * .kml, .kmz
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/kml`
   * * Shapefile
     *  .zip
     * A zip archive containing the following files: <NAME>.shp, <NAME>.shx, <NAME>.dbf and <NAME>.prj
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/shapefile`
   * * MapInfo
     * .zip
     * A zip archive containing either <NAME>.mid and <NAME>.mif files or <NAME>.map, <NAME>.tab, <NAME>.id and
       <NAME>.dat
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/mapinfo`
   * * OpenStreetMap
     * .osm
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/osm`
   * * XML
     * .xml
     *
     *
       :doc:`/publishing_data/04_configuring_a_source/connectors/xml`

.. _supportedcompressedformats:

Supported compressed file formats
---------------------------------

OpenDataSoft also supports compressed file formats. These are useful to save space, since files added to a dataset can't be more than 240Mo. Compressed file formats can also be used in the platform to create a dataset with multiple files (see :doc:`Creating a dataset with multiple files<creating_dataset_with_multiple_files>`)

* .zip
* .bz2
* .tar
* .gz
* .gzip
* .tar.gr
* .tgz
* .tar.bz2
