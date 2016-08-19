Uploading data
==============

Methods
-------

Static file
~~~~~~~~~~~

Remote file (http, https, ftp and ftps)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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
   * * CSV
     * .csv, .tsv, .txt, .dat
     * The platform lets you configure the file encoding, the field delimiter as well as a couple of other useful
       options.
   * * Microsoft Excel
     * .xls, .xlsx
     *
   * * OpenDocument SpreadSheet
     * .ods
     *
   * * GeoJSON
     * .json, .geojson
     *
   * * JSON
     * .json
     * Simple JSON documents are supported. The platform lets you choose the root path (path to the table of elements
       to be considered as rows) and the properties path (path to the dictionary holding the list of fields for an
       element).
   * * KML/KMZ
     * .kml, .kmz
     *
   * * Shapefile
     *  .zip
     * A zip archive containing at least the following files: <NAME>.shp, <NAME>.dbf, <NAME>.prj
   * * MapInfo
     * .zip
     * A zip archive containing either <NAME>.mid and <NAME>.mif files or <NAME>.map, <NAME>.tab, <NAME>.id and
       <NAME>.dat
   * * OpenStreetMap
     * .osm
     *

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


