Retrieving a file
=================

You can add a file from your computer, a URL, or an FTP server as a source to a dataset.

For more information, see :ref:`supportedformats`.

.. admonition:: Note
   :class: note
   
   The size limit for a file is 240Mo. If your file is too big, you can compress it before uploading it.
   
   For more information, see :ref:`supportedcompressedformats`.


Retrieving a file from your computer
------------------------------------

This method consists of directly uploading a file into the platform to attach a static file to a new dataset.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **From my computer** under the **Retrieve a file** section.
3. Either drop a file or click **Browse** to locate a file in your local filesystem.
4. From the preview of the first 20 records that appears, configure the source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.
 


Retrieving a file from a URL
----------------------------

You can connect the platform to:

* a remote server via its URL, to import files stored on this remote server, or
* a remote source that exposes data records over an API.

Opendatasoft supports HTTP and HTTPS URLs to files, for example, `http://example.org/mydata.csv`.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **From a URL** under the **Retrieve a file** section.
3. Configure your HTTP connection.
4. From the preview of the first 20 records that appears, configure the source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.


Retrieving a file from an FTP server
------------------------------------

Opendatasoft supports FTP and FTPS URLs:

- to files, for example, `ftp://example.org/my_dir/mydata.csv`, and
- to folders, for example, `ftp://example.org/my_dir/`.

.. admonition:: Note
   :class: note

   Opendatasoft does not support the SFTP protocol, which is completely different from the FTPS protocol.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **From an FTP server** under the **Retrieve a file** section.
3. Configure your FTP connection.
4. From the preview of the first 20 records that appears, configure the source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.

After creating a dataset, an edition interface for that dataset opens. Only users granted with the right permissions, either "Create dataset" or "Edit dataset", can use this interface.
Using this edition interface, you can process the data, configure the datasets and their visualizations, and manage the publishing of the datasets.

For more information, see:

- :doc:`/publishing_data/05_processing_data/processing_data`
- :doc:`/publishing_data/06_configuring_metadata/configuring_metadata`
- :doc:`/publishing_data/07_configuring_visualizations/index`
- :doc:`/publishing_data/11_saving_and_publishing_a_dataset/publish`

.. _supportedformats:

Supported formats
-----------------

Opendatasoft supports a variety of file formats.

.. admonition:: Note
   :class: note

   File formats support can be extended to match specific requirements, for example, to support a complex XML or a non-standard flat file format. For more information, contact your local support team.

Supported file formats
~~~~~~~~~~~~~~~~~~~~~~

The following table lists the supported file formats. For more information about the supported file formats and configuration options, click the desired file format.

.. list-table::
   :header-rows: 1

   * * File format
     * File extension
   * * :doc:`CSV <connectors/csv>`
     * .csv, .tsv, .txt, .dat
   * * :doc:`Microsoft Excel <connectors/spreadsheet>`
     * .xls, .xlsx
   * * :doc:`OpenDocument Spreadsheet <connectors/spreadsheet>`
     * .ods
   * * :doc:`JSON <connectors/json>`
     * .json
   * * :doc:`GeoJSON <connectors/geojson>`
     * .json, .geojson
   * * :doc:`KML/KMZ <connectors/kml>`
     * .kml, .kmz
   * * :doc:`Shapefile <connectors/shapefile>`
     *  .zip
   * * :doc:`MapInfo <connectors/mapinfo>`
     * .zip
   * * :doc:`OpenStreetMap <connectors/osm>`
     * .osm
   * * :doc:`RDF <connectors/rdf>`
     * .rdf
   * * :doc:`XML <connectors/xml>`
     * .xml

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

.. _supportedcompressedformats:

Supported compressed file formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can compress data if you load large datasets, given that files added to a dataset cannot exceed 240Mo. You can also use compressed file formats on the platform to :doc:`create a dataset with multiple files<creating_dataset_with_multiple_files>`.

Opendatasoft supports the following compressed file formats:

* .zip (UTF-8 encoding for file names is recommended)
* .bz2
* .tar
* .gz
* .gzip
* .tar.gz
* .tgz
* .tar.bz2
