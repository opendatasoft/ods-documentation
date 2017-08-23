Uploading multiple files
========================

It is possible to upload multiple files into the platform, as well as to have multiple sources into one dataset.

.. admonition:: Reminder: file VS source
   :class: important

   When a file is uploaded into the platform (no matter the method chosen to do so), it automatically creates a source of data in the platform. This source can be configured (used connector and separator depending on the format of the file, encoding, etc.) for the platform to be able to fully understand what the original file contains. When you upload one single file per dataset, there is no question about the number of sources: just one. However, when you upload multiple files per dataset, there can be only one source or several, depending on the chosen method to upload these multiple files.

There are 3 methods to upload multiple files into the platform: by uploading several files one by one, by uploading an archive file and via a URL.

Uploading files one by one
--------------------------

This method consists in uploading several files one by one into the platform, creating as many sources as the number of uploaded files. In that case, because a new source is created for each added file, those can have different formats (see :doc:`Supported formats</sourcing_and_processing_data/supported_formats>`)

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Choose one of the 3 available methods to upload your first file (see :doc:`Uploading data<uploading_data>`).
4. Once the first file is uploaded, click again on the **Add a source** button.
5. Repeat the procedure from step 3 as many times as you need, until all your files have been uploaded into the new dataset.

.. admonition:: Data schema when uploading files one by one
   :class: important

   With this method, it's the first file to be uploaded that determines the data schema. In other words, if the other files contain fields that do not match those in the first uploaded file, they will be ignored by the platform.

Uploading multiple files at once
--------------------------------

This method consists in uploading several files at the same time (via an archive file or through a URL) into the platform, creating one same source for all the uploaded files. In that case, because only one source is created for all the files, those have to have the same format (see :doc:`Supported formats</sourcing_and_processing_data/supported_formats>`).

.. admonition:: Data schema when uploading multiple files at once
   :class: important

   With this method, the platform will choose one of the files at random to determine the data schema. There is no way to know which file will be chosen.

.. admonition:: Uploading a shapefile
   :class: important

   To upload a shapefile (containing file formats such as .shp, .dbf, .prj and sometimes also .shx), create an archive file with all the needed files inside and follow the :ref:`Uploading files via an archive file<uploadfilesviaarchive>` procedure. When configuring the type of the source, choose Shapefile, which is a connector that will understand the several formats contained into the archive file.

.. _uploadfilesviaarchive:

Uploading multiple files via an archive file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Create an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the files to upload in the same dataset.
2. In Catalog > Datasets, click on the **New dataset** button.
3. Click on the **Add a source** button.
4. Click on the **Upload a file** button.
5. Choose the archive file you created, with all your files inside.
6. Click on the **Open** button of the file selection window.

Uploading multiple files stored on a remote server
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the remote server where the files are stored.

.. admonition:: Directory and subdirectories
   :class: caution

   For this method to work, the URL must link to a directory (e.g. ftp://example.org/my_dir/) -all files inside the directory will be uploaded into the platform. All the files in the directory need to have the same format and schema (e.g. CSV files with the same column titles). Files must also not be inside subdirectories: if the URL points towards a directory containing a compressed file, the latter will be imported into the platform as such -it will not be unzipped.

.. admonition:: Deleted files in FTP server
   :class: important

   When synchronizing from a remote FTP location, OpenDataSoft keeps a persistent cache and does not automatically prune files missing from the remote directory. Please contact OpenDataSoft's support if you need some cleanup to be performed.
