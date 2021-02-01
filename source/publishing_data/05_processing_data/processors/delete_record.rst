Delete record processor
=============================

The **Delete record** processor deletes existing records from a dataset based on field values or a condition. Records are deleted from the dataset's current version and the previous versions in the history. This processor aims at regularly updated datasets.

For example, suppose a dataset contains a list of companies with information such as the company name, status, number of employees, etc. In that case, this dataset is regularly updated to make sure that all information about these companies is still valid. You can configure the **Delete record** processor to delete records concerning companies that are now closed:

1. Select the field containing the company name in the processor parameters.
2. Enter the name of the closed company in the **Value to skip** field.

The processor will delete the following records that contain the name of the closed company in the specified field:

- The record from the most recent source from the last update
- The records from all previous sources of the dataset

.. admonition:: Note
   :class: note

   You cannot preview the changes made by the processor in the **Processing** tab.
   
   To see the changes made by the processor to the dataset, save, publish, and explore the dataset in the front office.

Delete record processor parameters
----------------------------------

The following table lists the **Delete record** processor parameters:

+---------------+-------------------------------------+
| Label         | Description                         |
+===============+=====================================+
| Field         | Field containing the value on which |
|               | record deletion is to be based.     |
|               |                                     |
|               | If you enter a boolean expression   |
|               | as the **Value to skip** parameter, |
|               | the **Field** parameter is not used.|
+---------------+-------------------------------------+
| Value to skip | Boolean expression or value on which|
|               | record deletion is to be based.     |
|               |                                     |
|               | If you enter a boolean expression,  |
|               | only records for which the          |
|               | expression is true are deleted.     |
+---------------+-------------------------------------+
| Exact match   | When selected, the processor will   |
|               | only delete records that contain an |
|               | exact match for the value to skip in|
|               | the specified field.                |
|               |                                     |
|               | When cleared, the processor will    |
|               | delete records that contain the     |
|               | value to skip anywhere within the   |
|               | selected field. For example, suppose|
|               | you enter ``Company`` as the value  |
|               | to skip and select the ``name``     |
|               | field in the parameters. In that    |
|               | case, the processor will delete all |
|               | records that contain values such as |
|               | `Company` or `My Company` in their  |
|               | ``name`` field.                     |
+---------------+-------------------------------------+
