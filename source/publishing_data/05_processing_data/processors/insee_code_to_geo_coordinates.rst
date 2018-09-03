INSEE Code to Geo Coordinates processor
=======================================

This processor uses a French INSEE code to produce a geo coordinate.

Setting the processor
---------------------

To set the parameters of the INSEE Code to Geo Coordinates processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Insee code
    * Field that contains the INSEE code to geocode
    * yes
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
