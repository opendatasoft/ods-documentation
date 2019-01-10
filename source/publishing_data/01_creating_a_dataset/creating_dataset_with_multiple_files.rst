Creating a dataset with multiple files
======================================

It is possible to add multiple files to a dataset, as well as to have multiple sources into one dataset.

There are 3 methods to add multiple files into a dataset: by adding them one by one, or by adding multiple files at the same time either through an archive file or via an FTP server.

Sourcing files one by one
-------------------------

This method consists in adding several files one by one into the platform, creating as many sources as the number of added files. In that case, because a new source is created for each added file, those can have different formats (see :doc:`Supported formats</publishing_data/01_creating_a_dataset/supported_formats>`)

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Choose one of the 3 available methods to upload your first file (see :doc:`Sourcing data<sourcing_data>`).
4. Once the first file is added, click again on the **Add a source** button.
5. Repeat the procedure from step 3 as many times as you need, until all your files have been added into the new dataset.

.. admonition:: Important
   :class: important

   With this method, it's the first file to be added that determines the data schema. In other words, if the other files contain fields that do not match those in the first added file, they will be ignored by the platform.

.. _sourcefilesviaarchive:

Sourcing multiple files within an archive
-----------------------------------------

This method consists in adding several files at the same time via an archive file, creating one same source for all the added files. In that case, because only one source is created for all the files, those have to have the same format (see :doc:`Supported formats</publishing_data/01_creating_a_dataset/supported_formats>`).

.. admonition:: Important
   :class: important

   With this method, the platform will choose the file with the oldest modification time to determine the data schema.

1. Create an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the files to add in the same dataset.
2. In Catalog > Datasets, click on the **New dataset** button.
3. Click on the **Add a source** button.
4. Source the archive file using one of the 3 available methods (see :doc:`Sourcing data</publishing_data/01_creating_a_dataset/sourcing_data>`).

.. admonition:: Important
   :class: important

   To source a shapefile (containing the following file formats: .shp, .shx, .dbf and .prj), create an archive file with all the needed files inside and follow the procedure above.


Sourcing multiple files stored on an FTP server
-----------------------------------------------

This method consists in connecting the platform to the directory of an FTP server to retrieve all the files contained in this directory.

.. admonition:: Caution
   :class: caution

   All the files in the directory need to have the same format and schema (e.g. CSV files with the same column titles). Files must also not be inside subdirectories: if the URL points towards a directory containing a compressed file, the latter will be imported into the platform as such -it will not be unzipped.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the FTP server where the files are stored. The URL should contain both the login and password to the FTP (e.g. ftp://login:password@example.org/my_directory/my_dataset).

.. admonition:: Note
   :class: note

   FTPS servers are also supported for this method (e.g. ftps://login:password@example.org/my_directory/my_dataset).

.. admonition:: Important
   :class: important

   When synchronizing from a remote FTP location, OpenDataSoft keeps a persistent cache and does not automatically prune files missing from the remote directory. Please contact OpenDataSoft's support if you need some cleanup to be performed.
