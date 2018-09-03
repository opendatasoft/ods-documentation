Set Timezone processor
======================

This processor allows to force the timezone of a datetime field.

.. admonition:: Note
   :class: note

   By default, datetime records are in UTC timezone.

Example: if a dataset contains a datetime field with an absent ("2016-12-08T08:51:53") or incorrect ("2016-12-08T08:51:53Z") timezone, the processor can force the timezone ("2016-12-08T08:51:53+00:00" if timezone set to UTC for example).


Setting the processor
---------------------

To set the parameters of the Set Timezone processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Datetime field containing the date
    * yes
  * * Timezone
    * Timezone to apply to the datetime field
    * yes
