ShapeFile connector
===================

The Shapefile connector extracts data from a ZIP archive containing the following file:
* ``.shp`` shape format; the feature geometry itself
* ``.dbf`` attribute format; columnar attributes for each shape
* ``.prj`` projection format; the coordinate system and projection information, a plain text file describing the projection using well-known text format
* ``.shx`` shape index format


.. note::

    The ZIP archive must be flat, all files must be at the root path (not sub directory).

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
   * * Encoding
     * The encoding can be manually set, we provide a list of common value.

       Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.

