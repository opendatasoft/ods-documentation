Uploading data
==============

Methods
-------

Static file
~~~~~~~~~~~

You can upload a static file.

TODO :add a screenshot

Remote file (http, https, ftp and ftps)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We can import files stored on a remote server, we support the following protocols:
* http
* ftp

And their secured versions:
* https
* ftps

*http* links to a single file, for example http://example.org/mydata.csv
*ftp* links to a single file or to a directory. For example ftp://example.org/my_dir/mydata.csv for a single file or ftp://example.org/my_dir/ for a directory.
In case of a directory, the new and modified files are downloaded every time the dataset is published.
Deleted files are not deleted from our filesystem, you can contact the support to delete them.
See *record_id* documentation for more information about the incremental publish.


API - Specific connector
~~~~~~~~~~~~~~~~~~~~~~~~

Sometime, it might be proven convenient to *connect* a dataset to a remote data source exposing data records over an
HTTP API.

OpenDataSoft natively supports the following APIs (contact your local support team to get these activated on your
domain):

* `JCDecaux Developer API <https://developer.jcdecaux.com/>`_
* `ArcGIS REST API <http://resources.arcgis.com/en/help/rest/apiref/>`_
* `Netatmo HTTP API <https://dev.netatmo.com/doc>`_
* :doc:`Salesforce </sourcing_and_processing_data/extractors/salesforce>`


OpenDataSoft can also develop and integrate customer specific Web APIs. OpenDataSoft connectivity toolkit makes it
possible to develop performant and secured connectors supporting incremental data processing.

Supported formats
-----------------

The following table lists the supported format and describes configuration options for each format.

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
        :doc:`CSV </sourcing_and_processing_data/extractors/csv>`
   * * Microsoft Excel
     * .xls, .xlsx
     *
     *
       :doc:`Spreadsheet </sourcing_and_processing_data/extractors/spreadsheet>`
   * * OpenDocument SpreadSheet
     * .ods
     *
     *
       :doc:`Spreadsheet </sourcing_and_processing_data/extractors/spreadsheet>`
   * * GeoJSON
     * .json, .geojson
     *
     *
       :doc:`Geojson </sourcing_and_processing_data/extractors/geojson>`
   * * JSON
     * .json
     * Simple JSON documents are supported. The platform lets you choose the root path (path to the table of elements
       to be considered as rows) and the properties path (path to the dictionary holding the list of fields for an
       element).
     *
       :doc:`JSON </sourcing_and_processing_data/extractors/json>`
   * * KML/KMZ
     * .kml, .kmz
     *
     *
       :doc:`KML </sourcing_and_processing_data/extractors/kml>`
   * * Shapefile
     *  .zip
     * A zip archive containing at least the following files: <NAME>.shp, <NAME>.dbf, <NAME>.prj
     *
       :doc:`Shapefile </sourcing_and_processing_data/extractors/shapefile>`
   * * MapInfo
     * .zip
     * A zip archive containing either <NAME>.mid and <NAME>.mif files or <NAME>.map, <NAME>.tab, <NAME>.id and
       <NAME>.dat
     *
       :doc:`MapInfo </sourcing_and_processing_data/extractors/mapinfo>`
   * * OpenStreetMap
     * .osm
     *
     *
       :doc:`OSM </sourcing_and_processing_data/extractors/osm>`

File formats support can be extended to match specific requirements (for instance, to support a complex XML DTD or a
non standard flat file format). Contact your local support team if you need more information on file formats support
extension.

OpenDataSoft supports compressed files (zip, bz2, tar, gr, gzip, tar.gr, tgz, tar.bz2).

Files with metadata
~~~~~~~~~~~~~~~~~~~

To upload files (and images) on the platform, you have to upload all files within a ZIP archive. It must contain the following files:

- a CSV file which lists the files (images) and metadata
- the files (images) at the same level (no subdirectory)

The CSV file must contains a column with all the files (images) name, others columns will be extract as metadata.
For example:

.. list-table::
   :header-rows: 1

   * * Scale
     * Title
     * File
   * * 1:10
     * Image 1
     * 1-10.png
   * * 1:20
     * Image 1
     * 1-20.png
   * * 1:10
     * Image 2
     * 2-10.png
   * * 1:20
     * Image 2
     * 2-20.png

The CSV files and the images must be located at the root of the archive.


