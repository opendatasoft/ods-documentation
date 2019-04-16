Configuring the Custom view
===========================

In the edition interface of a dataset, the Visualizations > Custom view tab allows to configure a custom view displayed in the front office, once the dataset is published on the portal. In contrary to all other visualizations, the Custom view is not a predefined visualization that adapts to a dataset. It is a blank space that can be used for any purpose, as long as it is related to the dataset, and can be filled in with HTML and CSS. It can be seen as a mini page (see :doc:`Creating content</creating_content/01_creating_content_page/create>`).

The Custom view is available for every dataset, but is optional. It can be enabled or disabled using the tick box displayed right under the visualizations tabs.

.. screenshot

To set the parameters of the Custom view, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Customization name
    * Description
    * Usage
  * * Tab title
    * Title of the Custom view tab in the front office. If left blank, the tab will be named "Custom view".
    * Write a title in the Tab title textbox.
  * * Tab icon
    * Icon of the Custom view tab in the front office. If left blank, the icon of the tab will be the `tachometer icon <https://fontawesome.com/v4.7.0/icon/tachometer>`_.
    * .. admonition:: Caution
         :class: caution

         Only `Font Awesome 4.7 icons <https://fontawesome.com/v4.7.0/icons/>`_ are supported as tab icon. Icons must be specified through their name, omitting the ``fa-`` prefix (e.g. to use the `bar chart <https://fontawesome.com/v4.7.0/icon/bar-chart>`_ icon, which name is ``fa-bar-chart``, write ``bar-chart`` in the Tab icon textbox).

      Write the name of the Font Awesome icon in the Tab icon textbox.
  * * Tab URL
    * URL to access the Custom view tab. By default, the URL to a Custom view is: ``www.domain_name.com/explore/datasets/dataset_name/custom``
    * Write the URL of the Custom view in the Tab URL textbox.


.. admonition:: Important
   :class: important

   OpenDataSoft widgets, such as the ones used for the main visualizations, can be added to a Custom view. Depending on what is the purpose of the Custom view, these widgets can either be static (i.e. independant from the rest of the page), or dynamic (i.e. able to interact with the rest of the page, for example with the dataset filters).

   - For widgets to be static, define a custom ``ods-dataset-context`` for the Custom view.
   - For widgets to be dynamic, use ``ctx`` as the ``ods-dataset-context``
