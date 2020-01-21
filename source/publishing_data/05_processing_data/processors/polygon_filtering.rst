Polygon filtering processor
===========================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor removes records containing geopoints that are not contained in a chosen polygon.

Setting the processor
---------------------

To set the parameters of the Polygon filtering processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Point
    * Field which contains the geopoints to filter.
    * yes
  * * Polygon
    * Polygon which will be used as filter
    * yes
