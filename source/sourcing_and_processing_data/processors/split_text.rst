Split Text processor
====================

This processor allows to split a field value and to extract the Nth element in a new field.

.. ifconfig:: language == 'en'

  .. figure:: screenshots/processing__split-text-en.png
    :alt: Split Text

.. ifconfig:: language == 'fr'

  .. figure:: screenshots/processing__split-text-fr.png
    :alt: Split Text

Setting the processor
---------------------

To set the parameters of the Split Text processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field which contains the value to split
    * yes
  * * Separator
    * String or character chosen to mark the split
    * yes
  * * Index
    * Index of the element to extract in the new field, in other words the number of the part that will be extracted. The numbering starts at 1.
    * yes
  * * Output field
    * Field where the extracted value will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
