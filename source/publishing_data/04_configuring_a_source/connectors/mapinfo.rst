MapInfo connector
=================

The MapInfo connector is used for MapInfo ZIP archives. They should contain the following files at the root level:

* ``.mid``: stores the attribute data
* ``.mif``: stores the structure and the geometries

or

* ``.map``: stores the graphic and geographic information needed to display each vector feature on a map
* ``.tab``: stores the link between all other files and holds information about the type of data set file
* ``.id``: stores information linking graphic data to the database information
* ``.dat``: stores the attribute data

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * File encoding
     * Encoding of the file

       Character encoding is the way characters are represented in a saved file. Unicode (or UTF-8) is the universal standard, but some files might be encoded in a legacy format (for example, old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, select the right encoding to apply from the list or enter it in the **Other** text box. You can use any aliases from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_.
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, this option is toggled off. Toggle on this option to extract the file name in an additional column.
