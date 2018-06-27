Simplify Geo Shape processor
============================

This processor simplifies a geo shape to reduce both the processing time and the dataset size.

.. admonition:: Note
   :class: note

   The process of simplification will not respect the topology of the geo shapes.

Setting the processor
---------------------

To set the parameters of the Simplify Geo Shape processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Tolerance (simplification level)
    * Value below which intermediate points will be suppressed. Depending on the shape complexity, different tolerances can be tested: the idea could be starting with a tolerance value of 0.0001 and in order to simplify more, to use a power of ten e.g. 0.001, then 0.01. If the tolerance is too high, the shapes will be overly simplified and unrecognizable. Use the preview to find out which tolerance works best.
    * yes
