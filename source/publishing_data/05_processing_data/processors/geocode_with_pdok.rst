Geocode with PDOK processor
===========================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact OpenDataSoft support team if you want this processor to be activated in your domain.

This processor allows to geocode addresses in the Netherlands by using the PDOK service.

Setting the processor
---------------------

To set the parameters of the Geocode with PDOK processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Address
    * Field containing the address in the Netherlands
    * yes
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
