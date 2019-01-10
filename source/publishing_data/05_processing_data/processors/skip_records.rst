Skip records processor
======================

This processor allows to skip records from a dataset.


Setting the processor
---------------------

To set the parameters of the Skip records processor, follow the indications from the table below.

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

      .. admonition:: Note
         :class: note

         It is possible, instead of writing a value, to write an expression. Write an equals sign ``=`` at the beginning to enter in expression mode (see :doc:`Expression processor<expression>` documentation for more information about expressions).

    * no
  * * Exact match
    * If checked: the field must contain the exact value written in the **Value to skip** parameter. If unchecked: the field must at least contain what was written in the **Value to skip** parameter.
    * no
  * * Keep instead of skip
    * If checked: the value written in the **Value to skip** parameter will be kept instead of being skipped, and all other values will be skipped.
    * no
