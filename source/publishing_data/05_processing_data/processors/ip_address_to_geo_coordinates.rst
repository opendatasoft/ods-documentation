IP Address to Geo Coordinates processor
=======================================

This processor allows to geocode an IP address. It uses the `GeoIP <http://geolite.maxmind.com>`_ database.

Setting the processor
---------------------

To set the parameters of the IP Address to Geo Coordinates processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * IP address
    * Field that contains the IP address to geocode
    * yes
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
