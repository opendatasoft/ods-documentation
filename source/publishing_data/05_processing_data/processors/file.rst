File processor
==============

This processor allows to retrieve images from URLs.

This processor is usually used after :doc:`creating a dataset with images</publishing_data/01_creating_a_dataset/creating_dataset_with_images>`, when these images are sourced via a URL (e.g. images stored in a remote server).

Setting the processor
---------------------

To set the parameters of the File processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Default value
  * * Field
    * Field containing the URL of the dataset's images
    * yes
    *
  * * Extract metadata
    * If checked: the images' EXIF metadata are extracted and added to the dataset
    * no
    * false
