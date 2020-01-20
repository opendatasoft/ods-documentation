Deduplicate multivalued fields
==============================

This processor allows to remove duplicates in multivalued fields.

Setting the processor
---------------------

To set the parameters of the Deduplicate multivalued fields processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Duplicated field
    * Field which contains the multivalues
    * yes
  * * Output field
    * Field that will contain the multivalues without duplicates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
  * * Separator
    * Character or string used to separate the different values
    * yes
