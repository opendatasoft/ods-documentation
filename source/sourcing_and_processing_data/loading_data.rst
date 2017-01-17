Loading data
============

OpenDataSoft provides different ways to add data to a dataset.
Each method solves a specific use case: you may want to upload a static referential, stay synchronized with a remote service, extract data from a geographical information system, from an API...


Methods
-------


.. ifconfig:: language == 'en'

    .. image:: loading_data__source--en.png
        :alt: Source upload

.. ifconfig:: language == 'fr'

    .. image:: loading_data__source--en.png
        :alt: Upload de source

Static file
~~~~~~~~~~~

You can attach a static file to your dataset by uploading a file from your computer via the *Upload a file* button.

.. note::
    The size limit for a file is 240Mo. If your file is too big you can compress it before uploading it on the platform.

Pasted data
~~~~~~~~~~~

The *Paste data* box can be used to directly paste data (in a CSV format). It is useful for quick tests.

Remote file (http, https, ftp and ftps)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By writing an url in the *Enter an URL* box, you can import files stored on a remote server, we support the following protocols:

* http
* ftp

And their secured versions:

* https
* ftps

*http* links to a single file, for example http://example.org/mydata.csv

*ftp* links to a single file or to a directory. For example ftp://example.org/my_dir/mydata.csv for a single file or ftp://example.org/my_dir/ for a directory.

Using a directory is often the prefered solution to automate incremental updates between a customer's information system and the OpenDataSoft platform. All the files in the directory need to have the same format and schema (for instance, CSV files with the same column titles). Whenever the dataset is published, new and updated files are fetched from the remote location and processed. Thanks to OpenDataSoft's native deduplication strategy, similar records are not processed twice (see :doc:`Special fields documentation</sourcing_and_processing_data/dataset_schema>`).

.. note::
    When synchronizing from a remote FTP location, OpenDataSoft keeps a persistent cache and does not automatically prune files missing from the remote directory. Please contact OpenDataSoft's support if you need some cleanup to be performed.

.. note::
    We do not support the sftp protocol which is completely different from the ftps protocol.

API - Specific connector
~~~~~~~~~~~~~~~~~~~~~~~~

Sometime, it might be proven convenient to *connect* a dataset to a remote data source exposing data records over an
HTTP API.

OpenDataSoft natively supports the following APIs (contact your local support team to get these activated on your
domain):

.. toctree::
   :titlesonly:

   connectors/arcgis
   connectors/jcdecaux
   connectors/salesforce
   connectors/wfs


OpenDataSoft can also develop and integrate customer specific Web APIs. OpenDataSoft connectivity toolkit makes it
possible to develop performant and secured connectors supporting incremental data processing.

.. ifconfig:: language == 'en'

    .. figure:: loading_data__options--en.png
        :alt: Connector options
        :width: 600px
        :align: center

        Available options when configuring a connector

.. ifconfig:: language == 'fr'

    .. figure:: loading_data__options--en.png
        :alt: Options du connecteur
        :width: 600px
        :align: center

        Options disponibles pour la configuration d'un connecteur

Supported formats
-----------------

.. toctree::
   :hidden:

   connectors/csv
   connectors/geojson
   connectors/json
   connectors/kml
   connectors/mapinfo
   connectors/netatmo
   connectors/osm
   connectors/shapefile
   connectors/spreadsheet
   connectors/xml

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

File formats support can be extended to match specific requirements (for instance, to support a complex XML DTD or a
non standard flat file format). Contact your local support team if you need more information on file formats support
extension.

OpenDataSoft supports compressed files (zip, bz2, tar, gz, gzip, tar.gr, tgz, tar.bz2).

Files (images) with metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To upload files (and images) on the platform, you have to build first a ZIP archive. This archive shall contain the following files:

- a CSV file which lists the files (images) and metadata
- the files (images) at the same level (no subdirectory)

The CSV file must contains a column with file (image) names, others columns will be considered as additional fields. For instance:

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

.. note::

    You can find a example of dataset images on `discovery <https://discovery.opendatasoft.com>`_. The source can be downloaded.