WFS connector
=============

Data can be extracted from an WFS service.

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * Convert spatial reference to EPSG:4326
     * True if you want to convert the coordinate to EPSG:4326
     * ``true`` or ``false``
   * * Encoding
     * The file encoding.
     * The encoding can be manually set, we provide a list of common value.

       Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * Inverse coordinates
     * Inverse the geographical coordinates if True. Sometimes the connector cannot guess the correct coordinate representation, this option can fix it.
     * ``true`` or ``false``
   * * Force wfs origin srs value
     * If the srs value is missing in the remote WFS service you can force it.
     * An value EPSG code.


Creation
~~~~~~~~

Enter the URL to the layer in the URL box, it must contains the TypeName. For example ``http://example.com?service=WFS&TypeName=mylayer``

