Create GeoPoint processor
=========================

This processor creates a geopoint field from a latitude field and a longitude field.

Setting the processor
---------------------

To set the parameters of the Create GeoPoint processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Default Value
  * * Latitude
    * Field which contains the latitude to create the geopoint
    * yes
    *
  * * Longitude
    * Field which contains the longitude to create the geopoint
    * yes
    *
  * * Source EPSG Code
    * Represents the `EPSG <http://spatialreference.org/ref/epsg/>`_ (spacial reference) code of the geographical data
    * yes
    * 4326
  * * Output Field
    * Field that will contain the produced geopoint. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
    *
