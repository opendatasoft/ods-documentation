Configuring the Images visualization
====================================


.. admonition:: Prerequisite
   :class: important

   For the Images visualization to be available, the dataset must contain at least one :ref:`file field<choosingtype>`, containing at least one image or any other media type file that can generate a thumbnail: .gif, .png, .jpeg, .jpg, .tif, .tiff, and .bmp.


In the edition interface of a dataset, the Visualizations > Images tab allows to configure the image gallery of the Images visualization displayed in the front office once the dataset is published on the portal.

The Images visualization, when available, is optional. It can be enabled or disabled using the tick box displayed right under the visualizations tabs.

.. image:: images/image_view_configuration.png

Customizing the information panel
---------------------------------

To configure the information panel of the Images visualization, follow the indications from the tables below.

.. list-table::
  :header-rows: 1

  * * Option name
    * Description
    * Usage
  * * Displayed image fields
    * Fields that contain images and that will be displayed in the Images visualization. In the list, the fields with a grey background are those that will be displayed, whereas those without a colored background will be hidden. Only the file type fields are available in this option.
    * To add an image field in the Images visualization:

      1. Find the field among the list.
      2. Click on the |icon-plus| icon at the right of the field.

      To hide an image field from the Images visualization:

      1. Find the field among the list.
      2. Click on the |icon-cross| icon at the right of the field.

      To reorder the image fields:

      1. Click on a field among the list.
      2. Drag and drop the field above or below another one.
  * * Tooltip types
    * 2 tooltip types:

      - Standard tooltip (default): allows the choice of a title and of the fields displayed in the tooltip.
      - Custom HTML tooltip: allows a further customization of the tooltip, using HTML.
    * 1. Click on the "Tooltip types" list box.
      2. Choose a tooltip type.

**Standard tooltip options**

.. list-table::
  :header-rows: 1

  * * Option name
    * Description
    * Usage
  * * Image title
    * Title of the image, used as a tooltip title.
    * 1. Click on the "Tooltip title" list box.
      2. Choose a field from the dataset, which contains the image titles.
  * * Displayed fields
    * Fields from the dataset which values will be displayed in the tooltip. In the list, the fields with a grey background are those that will be displayed in the tooltip, whereas those without a colored background will be hidden from the tooltip.
    * To add a field in the tooltip:

      1. Find the field among the list.
      2. Click on the |icon-plus| icon at the right of the field.

      To hide a field from the tooltip:

      1. Find the field among the list.
      2. Click on the |icon-cross| icon at the right of the field.

      To reorder the fields:

      1. Click on a field among the list.
      2. Drag and drop the field above or below another one.

**Custom HTML tooltip options**

.. list-table::
  :header-rows: 1

  * * Option name
    * Description
    * Usage
  * * Custom HTML tooltip
    * HTML area to write the content of the tooltip. 3 buttons above the text area allow to reindent a selection, reindent the whole HTML text, and/or to wrap the lines.
    * Write the content of the tooltip in HTML.

.. admonition:: Important
   :class: important

   For more information about tooltips and how to configure both Standard and Custom HTML tooltips, see :doc:`Configure the tooltip</publishing_data/07_configuring_visualizations/02_configuring_map_view/tooltip>` documentation.





.. |icon-cross| image:: ../02_configuring_map_view/images/icon_cross.png
    :width: 13px
    :height: 13px

.. |icon-plus| image:: ../02_configuring_map_view/images/icon_plus.png
    :width: 15px
    :height: 14px
