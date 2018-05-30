Concatenate Text processor
==========================

This processor allows to concatenate 2 fields using a separator.

This processor is usually used after creating a dataset with images, when these images are sourced via a URL (e.g. images stored in a remote server).

Setting the processor
---------------------

To set the parameters of the Concatenate Text processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Separator
    * Separator used between the values of the concatenated fields
    * no
  * * Left value
    * Field which value will appear on the left side of the separator
    * yes
  * * Right value
    * Field which value will appear on the right side of the separator
    * yes
  * * Output field
    * Field where the concatenated values will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
