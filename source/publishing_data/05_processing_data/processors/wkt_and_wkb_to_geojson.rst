WKT and WKB to GeoJson processor
================================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact OpenDataSoft support team if you want this processor to be activated in your domain.

This processor converts vector geometry object represented in Well-known text (WKT) or Well-known binary (WKB) into a GeoJSON object.

.. admonition:: Note
   :class: note

   For Well-known binary, an hexadecimal input is expected.

Setting the processor
---------------------

To set the parameters of the WKT and WKB to GeoJson processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * WKT|WKB field
    * Field that will be normalized, containing a geopoint with another projection system than WGS84
    * yes

Examples
--------

Examples of Well-known binary format:

.. code-block:: text

    000000000140000000000000004010000000000000
    0102000000030000000000000000003e4000000000000024400000000000002440000000...

Examples of Well-known text format:

.. code-block:: text

    POINT (30 10)
    POLYGON ((35 10, 45 45, 15 40, 10 20, 35 10),(20 30, 35 35, 30 20, 20 30))
