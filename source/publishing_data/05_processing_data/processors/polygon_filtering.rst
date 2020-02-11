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
    * Example
  * * Point
    * Field which contains the geopoints to filter.
    * yes
    * Geo Point
  * * Polygon
    * Polygon which will be used as filter
    * yes
    * ``{"type": "Polygon", "coordinates": [[[ 2.379, 48.824],[ 2.406, 48.879],[ 2.329, 48.864],[ 2.321, 48.826],[ 2.334, 48.827],[ 2.379, 48.824]]]}``