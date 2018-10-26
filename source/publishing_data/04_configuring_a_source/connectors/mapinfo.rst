MapInfo connector
=================

The MapInfo connector is used for MapInfo ZIP archives. They should contain the following files:

* ``.mid``: stores the attribute data
* ``.mif``: stores the structure and the geometries

or

* ``.map``: stores the graphic and geographic information needed to display each vector feature on a map
* ``.tab``: stores the link between all other files and holds information about the type of data set file
* ``.id``: stores information linking graphic data to the database information
* ``.dat``: stores the attribute data

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
