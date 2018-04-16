FTP with meta CSV harvester
===========================

This harvester allows users to create datasets from an FTP folder.

It connects via FTPS (explicit mode on port 21) if available, or FTP if requested in the provided URL.

The FTP folder must contain:

- one **metadata CSV file** (separated with semicolons)
- several **resources**
- (optional) several **CSV schema files**

.. ifconfig:: language == 'en'

    .. figure:: ../images/ftp_folder--en.png
        :alt: FTP folder layout
        :align: center

.. ifconfig:: language == 'fr'

    .. figure:: ../images/ftp_folder--en.png
        :alt: Organisation du dossier FTP
        :align: center

Metadata CSV file
-----------------

The **metadata CSV file** (named ``index.csv`` by default) is a semicolon separated file which contains:

- one header row
- several other rows, each one dedicated to a dataset to harvest

**Example:**

.. code-block:: text
  :linenos:

  name;title;description;theme;keyword;source_dataset;schema_file
  chocolate-bars;Chocolate bars database;"A database of chocolate bars";Health;Chocolate;chocolate.csv;schema_chocolate.csv
  random-id;Venture Capital Investments;Venture capital industry statistics.;Economy, Business;"Venture capital;Investments;IPO;Acquisitions";investments.json;

+----------------+-----------------------------+--------------------------------------+-------------------+----------------------------------------------+------------------+----------------------+
| name           | title                       | description                          | theme             | keyword                                      | source_dataset   | schema_file          |
+----------------+-----------------------------+--------------------------------------+-------------------+----------------------------------------------+------------------+----------------------+
| chocolate-bars | Chocolate bars database     | A database of chocolate bars         | Health            | Chocolate                                    | chocolate.csv    | schema_chocolate.csv |
+----------------+-----------------------------+--------------------------------------+-------------------+----------------------------------------------+------------------+----------------------+
| random-id      | Venture Capital Investments | Venture capital industry statistics. | Economy, Business | Venture capital;Investments;IPO;Acquisitions | investments.json |                      |
+----------------+-----------------------------+--------------------------------------+-------------------+----------------------------------------------+------------------+----------------------+

- The ``name`` column contains an identifier for each row. These identifiers can be anything as long as they only contain letters and numbers, are unique across the file, and don't change over time.
- The **CSV resource column** (``source_dataset`` by default) contains the resource for each row.
- The optional **CSV shema column** (here, ``schema_file``) contains the schema file for each row.
- Every other column is a metadata (e.g: ``title``, ``description``, ``theme``, ``keyword``, ``license``, ``language``, but there are other ones you can add). Note: use double quotes at the beginning and end of lists like ``keywords``, where you have to use semicolons to separate words.

Resources
---------

Resources can either be:

- files on the FTP server, in the same folder as the ``index.csv`` file, or under a subdirectory by specifying the relative path to the file in the column (e.g "resources/chocolate.csv")
- any URL pointing towards a supported format

If the column is empty, the dataset will only contain metadata.

Resources in any format supported by the platform can be harvested. However, as the harvester heavily relies on automatic parameters detection for the connector's configuration, files must be simple enough to be correctly extracted.

Schema CSV file
---------------

For each resource, the FTP folder can contain a **CSV schema file** that defines labels and descriptions for each field of the dataset.

The filename of each schema file must be written in the **CSV schema column**. This file has the following specifications:

- a ``name`` column holds each field name in lowercase (e.g. on a CSV resource, this would be the column names in lowercase)
- a ``label`` column (optional) holds the label of the corresponding field
- a ``description`` column (optional) holds the description of the corresponding field

.. code-block:: text
  :linenos:

  name;label;description
  company;Company;The company that makes the bar
  ref;Reference;The product id of the chocolate bar

+---------+-----------+-------------------------------------+
| name    | label     | description                         |
+---------+-----------+-------------------------------------+
| company | Company   | The company that makes the bar      |
+---------+-----------+-------------------------------------+
| ref     | Reference | The product id of the chocolate bar |
+---------+-----------+-------------------------------------+

The schema files do not need to contain a row for each field, and it is not required to provide a schema file for each dataset in the ``index.csv``. In the latter case, keep the corresponding cell empty.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * **Host** (host)
     * URL of the FTP server
     * eu.ftp.opendatasoft.com, ftps://eu.ftp.opendatasoft.com, ftp://eu.ftp.opendatasoft.com
   * * **User** (user)
     * Your username
     *
   * * **Password** (password)
     * Your password
     *
   * * Subdirectory (subdir)
     * The directory containing the data you want to harvest.
     * pub/documents
   * * **Metadata CSV filename** (metadata_file)
     * The file holding the metadata and filenames (see above for more precise specifications).
     * index.csv
   * * **Metadata CSV resource column** (resource_location_column)
     * This column holds a filename or an URL with the dataset resource.
     * source_dataset
   * * Metadata CSV schema column (resource_schema_column)
     * This column holds a filename with the resource schema (column labels and descriptions).
     *
