:orphan: true

FTP CSV harvester (deprecated)
==============================

Synchronize files and metadata stored on an FTP server.

This harvester is not available by default. If you need to use it, please contact OpenDataSoft support team.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Host (host)
     * URL of the FTP server
     * ftp.opendatasoft.com
   * * User (user)
     * Your username
     *
   * * Password (passwd)
     * Your password
     *
   * * Subdirectory (subdir)
     * The directory containing the data you want to harvest.
     * pub/documents
   * * Metadata CSV filename (metadata_file)
     * The file holding the metadata and filenames.
     * index.csv
   * * CSV file resource field (metadata_joinkey)
     * This column holds a filename or an URL with the dataset resource.
     * source_dataset
