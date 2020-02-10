Decode a Google polyline processor
==================================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor allows to decode a Google polyline to transform it into a GeoJSON LineString.

Setting the processor
---------------------

To set the parameters of the Decode a Google polyline processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Default value
  * * Encoded polyline
    * Field which contains the Google polyline
    * yes
    *
  * * Reverse Lng/Lat
    * If checked: reverses the geographic coordinates
    * no
    * True
  * * Output field
    * Field that will contain the GeoJSON LineString. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
    *
