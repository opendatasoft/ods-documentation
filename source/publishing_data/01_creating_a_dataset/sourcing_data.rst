Sourcing data
=============

There are 3 different methods to add data to a dataset:

* by uploading a static, local file into the platform
* by connecting the platform to a remote service (e.g. an API, a geographical information system, an FTP, etc.): it enables the platform to retrieve what that the remote service contains while staying synchronized with it
* by pasting data and uploading it into the platform

.. admonition:: Important
   :class: important

   Before sourcing data and particularly files into the platform, check the formats supported by the OpenDataSoft platform (see :doc:`Supported formats</publishing_data/01_creating_a_dataset/supported_formats>`).


Uploading a file
----------------

This method consists in directly uploading a file into the platform, in order to attach a static file to a new dataset.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Click on the **Upload a file** button.
4. Choose the file to upload into the platform.
5. Click on the **Open** button of the file selection window.

.. admonition:: Caution
   :class: caution

   The size limit for a file is 240Mo. If your file is too big you can compress it before uploading it in the platform (see :ref:`Supported compressed file formats<supportedcompressedformats>`).

.. admonition:: Note
   :class: note

   It is possible to simply drag and drop the file after steps 1 and 2, instead of following the whole file selection procedure.


.. _sourceremotedata:

Sourcing remote data via a URL
------------------------------

This method consists in connecting the platform to:

* either a remote server via its URL, to import files stored on this remote server
* or, a remote data source exposing data records over an API

.. admonition:: Note
   :class: note

   These connections with the platform allow the automation of data update, by scheduling or pushing real-time data (see :doc:`Keeping data up to date</publishing_data/03_scheduling_updates/scheduling_updates>`).

Connecting to a remote server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the remote server where the files are stored.

OpenDataSoft supports the following protocols:

* http and https, which link to a single file (e.g. http://example.org/mydata.csv)
* ftp and  ftps, which link to a single file (e.g. ftp://example.org/my_dir/mydata.csv) or to a directory (e.g. ftp://example.org/my_dir/). Using a directory is often the prefered solution to automate incremental updates between a customer's information system and the platform. All the files in the directory need to have the same format and schema (e.g. CSV files with the same column titles). In case of automation, whenever the dataset is published, new and updated files are fetched from the remote location and processed and thanks to OpenDataSoft's native deduplication strategy, similar records are not processed twice (see :doc:`Special fields documentation</publishing_data/05_processing_data/defining_a_dataset_schema>`).

.. admonition:: Important
   :class: important

   When synchronizing from a remote FTP location, OpenDataSoft keeps a persistent cache and does not automatically prune files missing from the remote directory. Please contact OpenDataSoft's support if you need some cleanup to be performed.

.. admonition:: Caution
   :class: caution

   We do not support the sftp protocol, which is completely different from the ftps protocol.


Connecting to an API
~~~~~~~~~~~~~~~~~~~~

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the API.

OpenDataSoft natively supports the following APIs:

.. toctree::
   :titlesonly:

   connectors/arcgis
   connectors/jcdecaux
   connectors/salesforce
   connectors/wfs

.. admonition:: Important
   :class: important

   Contact your local support team to get these connectors activated on your domain.

.. admonition:: Note
   :class: note

   OpenDataSoft can also develop and integrate customer specific Web APIs. OpenDataSoft connectivity toolkit makes it possible to develop performant and secured connectors supporting incremental data processing.

.. ifconfig:: language == 'en'

    .. figure:: images/loading_data__options--en.png
        :alt: Connector options
        :width: 600px
        :align: center

        Available options when configuring a connector

.. ifconfig:: language == 'fr'

    .. figure:: images/loading_data__options--en.png
        :alt: Options du connecteur
        :width: 600px
        :align: center

        Options disponibles pour la configuration d'un connecteur


Pasting data
------------

This method consists in pasting data in a CSV format. This method is most useful for quick tests.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Paste data** area, write or paste data in a CSV format.
4. Click on the **Send data** button.
