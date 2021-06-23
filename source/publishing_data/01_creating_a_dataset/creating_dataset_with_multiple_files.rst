Creating a dataset with multiple files
======================================

You can add multiple files to a dataset in the following ways:

- adding each file one by one,
- adding multiple files at the same time through an archive file, or
- adding multiple files via an FTP server.

Sourcing files one by one
-------------------------

This method consists of adding files one by one into the platform, creating as many sources as the number of added files. In that case, because a new source is created for each added file, those can have different formats.

For more information, see :ref:`supportedformats`.

.. admonition:: Important
   :class: important

   When uploading files one by one, the first file to be added that determines the data schema.
   
   If the following files contain fields that do not match those in the first file, they will be ignored by the platform.

1. :doc:`Create a dataset</publishing_data/01_creating_a_dataset/creating_a_dataset>` using your first file as a source.
2. From **Sources** tab of the dataset, click the **Add a source** button.
3. Add the next.

.. admonition:: Caution
   :class: caution

   Be careful when deleting files from a dataset created with multiple files, especially those with different data schemas: if the first file is deleted, the whole dataset will appear as empty.

.. _sourcefilesviaarchive:

Sourcing multiple files within an archive
-----------------------------------------

This method consists of adding several files at the same time via an archive file, creating a single source for all the added files. In that case, because only one source is created for all the files, those have to have the same format.

For more information, see :ref:`supportedformats`.

.. admonition:: Important
   :class: important

   With this method, the platform chooses the file with the oldest modification time to determine the data schema.

1. Create an archive file with the files to add to the same dataset.
2. In Catalog > Datasets, click on the **New dataset** button.
3. Add the archive file as a source, using one of the 3 available methods under the **Retrieve a file** section. For more information, see - :doc:`Retrieving a file from your computer, a URL, or an FTP server<retrieving_file>`.
4. From the preview of the first 20 records that opens, configure the source.
5. Configure the dataset information or use the pre-filled values.


Sourcing multiple files stored on an FTP server
-----------------------------------------------

This method consists of connecting the platform to the directory of an FTP server to retrieve all the files contained in this directory.

.. admonition:: Caution
   :class: caution

   All the files in the directory need to have the same format and schema (for example, CSV files with the same column titles). Files must also not be inside subdirectories: if the URL points towards a directory containing a compressed file, the latter will be imported into the platform as such -it will not be unzipped.

1. In Catalog > Datasets, click on the **New dataset** button.
2. In the wizard that opens, select **From an FTP server** under the **Retrieve a file** section.
3. Configure your FTP connection.

   - FTPS servers are supported for this method (for example, `ftps://login:password@example.org/my_directory/my_dataset`).
   - When synchronizing from a remote FTP location, Opendatasoft keeps a persistent cache and does not automatically prune files missing from the remote directory. If you need some cleanup to be performed, to the right of the resource, click "Clean cache".

4. From the preview of the first 20 records that opens, configure the source.
5. Configure the dataset information or use the pre-filled values.
