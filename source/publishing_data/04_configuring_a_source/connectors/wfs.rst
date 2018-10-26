WFS connector
=============

.. admonition:: Important
   :class: important

   This connector is not available by default. Please contact OpenDataSoft for the activation of this connector on a given OpenDataSoft domain.

The WFS connector is used to extract data from a WFS service.

Creation
~~~~~~~~

1. Enter the URL to the layer in the Enter a URL area, when creating a new dataset. It must contain the TypeName (e.g. http://example.com?service=WFS&TypeName=mylayer).
2. Press Enter, or click the + button.


Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Convert spatial reference to EPSG:4326
     * To convert the geographical coordinates to EPSG:4326.
     * By default, the box is not checked. Check the box to convert the geographical coordinates.
   * * Encoding
     * Encoding of the file.

       .. admonition:: Note
          :class: note

          Character encoding is the way characters are represented in a saved file. Unicode (or utf-8) is the universal standard but some files might be encoded in a legacy format (e.g. old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, choose the right one among the list, or write it in the textbox. Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, the box is not checked. Check the box to extract filename in an added column.
   * * Inverse coordinates
     * Sometimes the connector cannot guess the correct coordinate representation. The Inverse coordinates configuration option avoids this situation by inversing the coordinates.
     * By default, the box is not checked. Check the box to inverse the coordinates.
   * * Force wfs origin srs value
     * To force the srs value if it is missing in the remote WFS service.
     * Indicate the right EPSG code in the textbox.
