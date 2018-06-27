Zip Code to Geo Coordinates processor
=====================================

This processor uses a French postal code to produce a geo coordinate.

The Zip Code to Geo Coordinates processor is available for the following countries:

- France
- Germany
- the USA

Setting the processor
---------------------

To set the parameters of the Zip Code to Geo Coordinates processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Country
    * Country of the postal code (France, Germany or the USA only)
    * yes
  * * Postal code
    * Field that contains the French postal code to geocode
    * yes
  * * Retrieve Geo Shapes
    * If checked: the processor retrieves the geo shape corresponding to the postal code as well of the geo point
    * no
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
