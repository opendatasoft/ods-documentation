Shapefile connector
===================

The Shapefile connector is used to extract data from a shapefile. It is a ZIP archive that should contain the following files at the root level:

* ``.shp`` shape format; the feature geometry itself
* ``.shx`` shape index format
* ``.dbf`` attribute format; columnar attributes for each shape
* ``.prj`` projection format; the coordinate system and projection information, a plain text file describing the projection using well-known text format

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Encoding
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * File encoding
     * Encoding of the file

       Character encoding is the way characters are represented in a saved file. Unicode (or UTF-8) is the universal standard, but some files might be encoded in a legacy format (for example, old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, select the right encoding to apply from the list or enter it in the **Other** text box. You can use any aliases from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_.

.. include:: ../../../_includes/connectors_extractfilename.rst
