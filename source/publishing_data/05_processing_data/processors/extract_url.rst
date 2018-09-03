Extract URLs processor
======================

This processor allows to extract URLs from HTML or text content. The Extract URLs processor extracts http and https links into a field, and the links are then separated by a space.

Setting the processor
---------------------

To set the parameters of the Extract URLs processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field which contains the HTML or text content from where to extract the URL
    * yes
  * * Output field
    * Field where the extracted value will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
