Meta expression processor
=========================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact Opendatasoft support team if you want this processor to be activated in your domain.

This processor allows to write an expression and apply its result on several fields of the dataset.

.. admonition:: Important
   :class: important

   Please refer to the documentation of the :doc:`Expression processor <expression>` for more information about how to write an expression. Both the Expression and the Meta expression processors function the same way, the main difference being that when using the Meta expression processor, the field(s) should be represented with ``X``.

Setting the processor
---------------------

To set the parameters of the Meta expression processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Meta expression
    * Expression pattern. Use ``X`` to represent the field(s).
    * yes
  * * Fields
    * Fields where the meta expression will be applied. Click on the + icon next to the drop-down menu to add another field on which the meta expression will be applied.
    * yes
