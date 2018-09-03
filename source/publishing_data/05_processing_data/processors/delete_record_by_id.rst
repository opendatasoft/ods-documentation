Delete record by ID processor
=============================

This processor sends a delete order to remove an existing record of a dataset, based on the unique ID. It implies that the existing record will be deleted in both the current version of the dataset and its history. This processors indeed aims regularly updated datasets.

Example: if a dataset contains a list of companies (with information such as status, number of employees, sector of activity etc.), it is regularly updated to make sure that all information about these companies are still valid. With the Delete record by ID processor, it is possible to delete records concerning companies that are now closed. It will not only delete the record from the most recent source from the last update, but also the records (concerning the closed company) from all previous sources of the dataset.

.. admonition:: Note
   :class: note

   The changes applied to the dataset with this processor are not visible in the dataset preview of the Processing tab. Save, publish and explore the dataset in the front office to see the changes.

Setting the processor
---------------------

To set the parameters of the Delete record by ID processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field containing the record value to delete
    * yes
  * * Value to skip
    * Value to delete from the field's records
    * no
  * * Exact match
    * If checked: the field must contain the exact value written in the **Value to skip** parameter. If unchecked: the field must at least contain what was written in the **Value to skip** parameter.
    * no
