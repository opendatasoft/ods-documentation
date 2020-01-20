Nominatim geocoder processor
============================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor allows you to geocode full-text addresses by using the `OpenStreetMap Nominatim <https://nominatim.openstreetmap.org/>`_ service.

Setting the processor
---------------------

To set the parameters of the Nominatim geocoder processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Address
    * Field containing the full-text address to geocode
    * yes
  * * Postal code
    * Field containing the postal code
    * yes
  * * City
    * Field containing the city
    * no
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
