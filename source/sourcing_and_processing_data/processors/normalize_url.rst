Normalize URL processor
=======================

This processor allows to normalize a field value that should contain a valid URL.

It can be used for instance when the field's value contains leading or trailing spaces, or does not have any scheme specification (in which case 'http://' is prepended to the field's value).

Setting the processor
---------------------

To set the parameters of the Normalize URL processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field which contains the URL to normalize
    * yes
