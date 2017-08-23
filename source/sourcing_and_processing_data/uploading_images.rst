Uploading images
================

It is possible to upload images, as well as other similar types of files, into the platform.

OpenDataSoft supports the following formats:

* .gif
* .png
* .jpeg
* .jpg
* .tiff
* .bmp
* .svg

All these formats are considered by the platform as images and can be imported as such. A thumbnail will also be generated for these formats, activating the Images visualization.

.. admonition:: PDF format
   :class: caution

   The pdf format is also supported by the platform. However, no thumbnail will be generated and the pdf files will not be available in the Images visualization (see :doc:`Configuring the image gallery</sourcing_and_processing_data/configuring_visualizations/image>`).

There are 2 different methods to upload images into the platform: with an archive file or via a URL.

Uploading images with an archive file
-------------------------------------

This method consists in building an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the images, and then to upload it into the platform.

Building the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~

The archive file should contain:

* the files (images)
* a CSV file listing the files (images) and their metadata

.. admonition:: CSV file
   :class: caution

   There must be only one CSV file, and it must only be in a CSV format.

The CSV file must contain a column with the files (images) names ; all other columns will be considered as additional fields.

Example:

.. list-table::
   :header-rows: 1

   * * Scale
     * Title
     * File
   * * 1:10
     * Image 1
     * 1-10.png
   * * 1:20
     * Image 1
     * 1-20.png
   * * 1:10
     * Image 2
     * 2-10.png
   * * 1:20
     * Image 2
     * 2-20.png

.. admonition:: Case-sensitivity and subdirectories
   :class: caution

   Be careful when creating the CSV file, the platform is case-sensitive. We also recommend to keep all images at the same level into the archive file. However, if images are into subdirectories, keep in mind to write the whole path in the CSV file.

Uploading the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the archive file is created, it can be uploaded into the platform.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Click on the **Upload a file** button.
4. Choose the archive file you created, with your images inside.
5. Click on the **Open** button of the file selection window.

.. note::
    It is possible to simply drag and drop the file after steps 1 and 2, instead of following the whole file selection procedure.


Uploading images via a URL
--------------------------

This method consists in uploading images stored in a remote server (see the supported protocols when :ref:`Uploading remote data via a URL<uploadremotedata>`), and using a processor to define the images and extract their metadata.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the remote server where the images are stored.
4. Once the connection with the platform is made and the data uploaded, click on the **Processing** tab.
5. Click on the **Add a processor** button.
6. Choose the File processor, in the Generic operations section.
7. In the File processor area, indicate which field contains the images.
8. *(optional)* Still in the File processor area, tick the **Extract metadata** box to import the related metadata of the images.


Displaying uploaded images
--------------------------

Once the images are uploaded into the platform, they can be displayed in 2 different ways:

* through the default Images visualization tab: an image gallery displaying all the images and their metadata
* through a slideshow, which is an OpenDataSoft widget that can be added in any code area of the platform (e.g. in the Custom view of the dataset or in a content page): in that case, images are displayed one by one


Exporting and downloading uploaded images
-----------------------------------------

Images uploaded into the platform can only be downloaded or exported one by one. There is no way to download all the images of a dataset at the same time.

Downloading an image
~~~~~~~~~~~~~~~~~~~~

1. In the front office, go to the **Images** visualization tab of the dataset containing the image(s) to download.
2. Click on the image to download.
3. At the end on the image's metadata, click on the **Download image** button.

Exporting dataset to retrieve image URL
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. In the front office, go the **Export** tab of the dataset containing the image(s) to export.
2. Export the whole dataset, or part of it if it's filtered.
3. Open the exported dataset in the spreadsheet software of your choice.
4. Find the field containing the URLs of the image and retrieve them.
