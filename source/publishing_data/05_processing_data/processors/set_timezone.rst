Set timezone processor
======================

This processor allows to force the timezone of a datetime field.

.. admonition:: Note
   :class: note

   By default, datetime records are in UTC timezone.

Example: if a dataset contains a datetime field with an absent ("2016-12-08T08:51:53") or incorrect ("2016-12-08T08:51:53Z") timezone, the processor can force the timezone ("2016-12-08T08:51:53+00:00" if timezone set to UTC for example).

.. admonition:: Important
   :class: important

   The Set timezone processor only allows to fix a wrong timezone or define one if it isn't by default. There is another way to manage the timezone in which the data will be displayed: the Timezone metadata (see :doc:`Standard metadata </publishing_data/06_configuring_metadata/standard_metadata>`).

Setting the processor
---------------------

To set the parameters of the Set timezone processor, follow the indications from the table below.

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
