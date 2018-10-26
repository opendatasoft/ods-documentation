Shapefile connector
===================

The Shapefile connector is used to extract data from a shapefile. It is a ZIP archive that should contain the following files:

* ``.shp`` shape format; the feature geometry itself
* ``.shx`` shape index format
* ``.dbf`` attribute format; columnar attributes for each shape
* ``.prj`` projection format; the coordinate system and projection information, a plain text file describing the projection using well-known text format

.. admonition:: Note
   :class: note

   The ZIP archive must be flat. All files must be at the root path (not in subdirectories).


Creation
~~~~~~~~

See :doc:`how to source a file</publishing_data/01_creating_a_dataset/sourcing_data>`.


Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Encoding
     * Encoding of the file.

       .. admonition:: Note
          :class: note

          Character encoding is the way characters are represented in a saved file. Unicode (or utf-8) is the universal standard but some files might be encoded in a legacy format (e.g. old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, choose the right one among the list, or write it in the textbox. Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, the box is not checked. Check the box to extract filename in an added column.
