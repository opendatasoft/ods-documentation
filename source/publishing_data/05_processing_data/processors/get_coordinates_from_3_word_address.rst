Get coordinates from a 3 word address processor
===============================================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact OpenDataSoft support team if you want this processor to be activated in your domain.

This processor converts a 3 word address into geographical coordinates.

This processor requires a `what3words <https://what3words.com/>`_ API key.

Setting the API key
-------------------

To setup a what3words key in order to use this processor:

1. Leave the Catalog tab and click on the Configuration tab in the backoffice menu.
2. Click on the **Data processing** tab of the Configuration menu.
3. In the **what3words API** section, fill in the API key parameter.
4. Click on the **Save** button at the top of the page.

Setting the processor
---------------------

To set the parameters of the Get coordinates from a 3 word address processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * 3 word address
    * Field containing the 3 word address
    * yes
  * * Output field
    * Field that will contain the resulting geographical coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * no
