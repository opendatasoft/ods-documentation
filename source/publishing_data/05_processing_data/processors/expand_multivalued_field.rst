Expand multivalued field
========================

This processor splits the values in a multivalued field into several records.

Setting the processor
---------------------
To set the parameters of the Expand multivalued field processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Multivalued field
    * Multivalued field to split into several records
    * Yes
  * * Separator
    * Character(s) separating the values in the multivalued field
    * Yes
  * * Output field
    * Field for the created records, can be an existing field or a new one
    * Yes
