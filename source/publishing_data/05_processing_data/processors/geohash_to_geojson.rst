GeoHash to GeoJSON
==================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor converts geohashes (short strings of letters and digits encoding a geographical location) into a GeoJSON object.

Setting the processor
---------------------

To set the parameters of the GeoHash to GeoJSON processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Geohash field
    * Field that contain the geohashes
    * yes
  * * Output field
    * Field that will contain the GeoJSON object. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
