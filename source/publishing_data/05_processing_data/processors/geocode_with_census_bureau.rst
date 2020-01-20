Geocode with the Census Bureau (USA) processor
==============================================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor allows you to geocode addresses in the USA by using the `Census Bureau <https://www.census.gov/en.html/>`_.

Setting the processor
---------------------

To set the parameters of the Geocode with the Census Bureau processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Street address
    * Field containing the address, located in the USA, to geocode
    * yes
  * * City
    * Field containing the American city
    * no
  * * State
    * Field containing the state
    * no
  * * ZIP code
    * Field containing the American zipcode
    * no
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
