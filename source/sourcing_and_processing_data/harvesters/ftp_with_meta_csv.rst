:orphan: true

FTP with meta CSV harvester
===========================

Harvester for FTP folders with one metadata CSV file (semicolon separated) for several resources.

- The CSV file must have a "name" column with the id of the dataset.
- One of the CSV columns (resource_location_column) contains the resource location as a filename on the same FTP folder, or an http/https/ftp URL. If this column is empty, the dataset will only contain metadata.
- The other columns are for dataset metadata, the column name being standard metadata field names.

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
   * * Password (password)
     * Your password
     *
   * * Subdirectory (subdir)
     * The directory containing the data you want to harvest.
     * pub/documents
   * * Metadata CSV filename (metadata_file)
     * The file holding the metadata and filenames (see above for more precise specifications).
     * index.csv
   * * Metadata CSV column that contains resource location (resource_location_column)
     * This column holds a filename or an URL with the dataset resource.
     * source_dataset
