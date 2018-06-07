Creating a dataset with images
==============================

It is possible to source images, as well as other media types of files, into the platform.

All formats considered as images by the platform (.gif, .png, .jpeg, .jpg, .tiff, .bmp, .svg) will be imported as such. It means that a thumbnail will be generated for these formats, activating the Images visualization. Other types of files (such as PDF) can also be added into a dataset, however no thumbnail will be generated and the Images visualization will not be available. Users will only be able to download these files.

There are 2 different methods to source images and add them into a dataset: with an archive file or via a URL.

Sourcing images with an archive file
------------------------------------

This method consists in building an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the images, and then to import it into the platform.

Building the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~

The archive file should contain:

* the files (images)
* a CSV file listing the files (images) and their metadata

.. admonition:: Caution
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

.. admonition:: Caution
   :class: caution

   We recommend to keep all images at the same level into the archive file. However, if images are into subdirectories, keep in mind to write the whole path in the CSV file.

Sourcing the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~

Once the archive file is created, it can be imported into the platform.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Click on the **Upload a file** button.
4. Choose the archive file you created, with your images inside.
5. Click on the **Open** button of the file selection window.

.. admonition:: Note
   :class: note

   It is possible to simply drag and drop the file after steps 1 and 2, instead of following the whole file selection procedure.


Sourcing images via a URL
-------------------------

This method consists in sourcing images stored in a remote server, and using a processor to define the images and extract their metadata.

For this method, OpenDataSoft supports the following protocols: http, and its secured version https. Both link to a single file (e.g. http://example.org/mydata.csv).

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. In the **Enter a URL** box, write the URL of the remote server where the images are stored.
4. Once the connection with the platform is made and the images sourced, click on the **Processing** tab.
5. Click on the **Add a processor** button.
6. Choose the File processor, in the Generic operations section.
7. In the File processor area, indicate which field contains the images.
8. *(optional)* Still in the File processor area, tick the **Extract metadata** box to import the related metadata of the images.


Displaying images
-----------------

Once the images are imported into the platform, they can be displayed in 2 different ways:

* through the default Images visualization tab: an image gallery displaying all the images and their metadata
* through a slideshow, which is `an OpenDataSoft widget <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsSlideshow>`_ that can be added in any code area of the platform (e.g. in the Custom view of the dataset or in a content page): in that case, images are displayed one by one


Exporting and downloading images
--------------------------------

Images imported into the platform can only be downloaded or exported one by one. There is no way to download all the images of a dataset at the same time.

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
