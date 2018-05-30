Transform boolean columns to multivalued field processor
========================================================

This processor transforms true values from boolean fields into a multivalued field.

Setting the processor
---------------------

To set the parameters of the Transform boolean columns to multivalued field processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Boolean fields
    * Boolean fields from the dataset
    * yes
  * * Values considered as 'false'
    * All values from the dataset's boolean fields which are considered as "false"
    * yes
  * * Empty field is 'false'
    * Set if the empty fields from the dataset must be considered as "false"
    * no
  * * Use labels instead of field names
    * Set if the former boolean fields must be displayed in the new multivalued field with their labels or with their field names (meaning their technical identifiers)
    * no
  * * Remove boolean fields after processing
    * Set if boolean fields used in the processor must be removed from the dataset after the processing
    * no
  * * Separator
    * Separator to use to separate multivalued records from the new field. Default separator is ``,``.
    * no
  * * Output field
    * Field containing the multivalued records from the boolean fields used in the processor. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
