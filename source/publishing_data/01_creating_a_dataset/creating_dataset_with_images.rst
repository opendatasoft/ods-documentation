Creating a dataset with media files
===================================

It is possible to source the following media files into the platform:

- Images (.gif, .png, .jpeg, .jpg, .tiff, .bmp, .svg)
- PDF files (.pdf)
- GTFS files (.gtfs)

All formats considered as images by the platform will be imported as such. It means that a thumbnail will be generated for these formats, activating the Images visualization. The other types of files can also be added into a dataset, however no thumbnail will be generated and the Images visualization will not be available. Users will only be able to download these files.

There are 2 different methods to source media files and add them into a dataset: with an archive file or via a URL.

Sourcing media files with an archive file
-----------------------------------------

This method consists in building an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the media files, and then to import it into the platform.

Building the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~

The archive file must contain:

* the media files,
* and a CSV file listing the media files and their metadata

No matter what the format of the media files is, both these media files and CSV file must be zipped together. For instance, if the media files are already zipped files, they must be zipped again altogether with the CSV file.

.. admonition:: Caution
   :class: caution

   We recommend to keep all images at the same level into the archive file. However, if images are into subdirectories, keep in mind to write the whole path in the CSV file.

.. admonition:: Caution
   :class: caution

   There must be only one CSV file, and it must only be in a CSV format.

Creating the CSV file of the archive file
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The CSV file must at least contain a column with the names of the media files. It can contain other columns, that will be considered as additional fields.

Example:

CSV file to create a dataset with media files:

.. code-block:: html

 Caption;Title;File
 Caption of PNG file;Media 1;file_name.png
 Caption of PDF file;Media 2;file_name.pdf
 Caption of ZIP file;Media 3;file_name.zip
 Caption of SVG file;Media 4;file_name.svg

.. list-table::
   :header-rows: 1

   * * Caption
     * Title
     * File
   * * Caption of PNG file
     * Media 1
     * 1-10.png
   * * Caption of PDF file
     * Media 2
     * 1-20.pdf
   * * Caption of ZIP file
     * Media 3
     * 2-10.zip
   * * Caption of SVG file
     * Media 4
     * 2-20.svg

In this example:

- the column "File" indicates the names of the media files
- the columns "Title" and "Caption" are additional fields

Sourcing the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~

Once the archive file is created, it can be imported into the platform.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Click on the **Upload a file** button.
4. Choose the archive file you created, with your media files inside.
5. Click on the **Open** button of the file selection window.


Sourcing media files via a URL
------------------------------

This method consists in sourcing any :doc:`supported format <supported_formats>` file, containing URLs of media files stored in a remote server, and using a processor to define the media files and extract their metadata.

.. admonition:: Note
   :class: note

   For this method, OpenDataSoft supports the following protocols: http, and its secured version https. Both should link to a single file.

1. In Catalog > Datasets, click on the **New dataset** button.
2. Click on the **Add a source** button.
3. Click on either **Upload a file** or **Enter a URL** to source the file. Any sourcing method works.
4. Once the dataset is created, click on the **Processing** tab.
5. Click on the **Add a processor** button.
6. Choose the File processor, in the Generic operations section.
7. In the File processor area, indicate which field contains the URLs of the media files.
8. *(optional)* Still in the File processor area, tick the **Extract metadata** box to import the related metadata of the images.

Example:

CSV file to create a dataset with media files:

.. code-block:: html

 Caption;Title;File
 Caption of PNG file;Media 1;http://website.com/file_name.png
 Caption of PDF file;Media 2;http://website.fr/file_name.pdf
 Caption of ZIP file;Media 3;http://another-website.com/file_name.zip
 Caption of SVG file;Media 4;http://website.com/file_name.svg

.. list-table::
   :header-rows: 1

   * * Caption
     * Title
     * File
   * * Caption of PNG file
     * Media 1
     * http://website.com/file_name.png
   * * Caption of PDF file
     * Media 2
     * http://website.fr/file_name.pdf
   * * Caption of ZIP file
     * Media 3
     * http://another-website.com/file_name.zip
   * * Caption of SVG file
     * Media 4
     * http://website.com/file_name.svg

In this example:

- the column "File" indicates the URL of the media files (which is also the column that will be used with the File processor)
- the columns "Title" and "Caption" are additional fields


Displaying images
-----------------

Once the images are imported into the platform, they can be displayed in 2 different ways:

* through the default Images visualization tab: an image gallery displaying all the images and their metadata
* through a slideshow, which is `an OpenDataSoft widget <http://opendatasoft.github.io/ods-widgets/docs/#/api/ods-widgets.directive:odsSlideshow>`_ that can be added in any code area of the platform (e.g. in the Custom view of the dataset or in a content page): in that case, images are displayed one by one
