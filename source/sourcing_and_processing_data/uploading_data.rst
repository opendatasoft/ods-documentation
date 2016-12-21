Uploading data
==============

OpenDataSoft provides different way to add data to a dataset.
Each method solves a specific use case, you may want to upload a static referential, stay synchronized with a remote service, extract data from a geographical system, from an API...


Methods
-------

.. note::
    The size limit for a file is 240Mo. If your file is to big you can try to compress it or contact us if you do not succeed in sending your file.


.. ifconfig:: language == 'en'

    .. image:: uploading_data__source--en.png
        :alt: Source upload

.. ifconfig:: language == 'fr'

    .. image:: uploading_data__source--en.png
        :alt: Upload de source

Static file
~~~~~~~~~~~

You can attach a static file to your dataset by uploading a file from your computer via the *Upload a file* button.

Pasted data
~~~~~~~~~~~

The *Paste data* box can be used to directly paste data (in a CSV format) without passing by a file. It is useful for tests or the creating of a data referential.

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
In case of a directory, the new and modified files are downloaded every time the dataset is published.
Deleted files are not deleted from our filesystem, you can contact the support to delete them.
See *record_id* documentation for more information about the incremental publish.

.. note::
    We do not support the sftp protocol which is completely different from ftp and ftps.

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

OpenDataSoft supports compressed files (zip, bz2, tar, gr, gzip, tar.gr, tgz, tar.bz2).

Files (images) with metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

.. note::

    You can find a example of dataset images on `discovery <https://discovery.opendatasoft.com>`_. The source can be download.