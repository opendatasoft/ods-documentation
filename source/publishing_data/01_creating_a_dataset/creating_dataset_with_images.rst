Creating a dataset with media files
===================================

.. contents:: On this page
   :local:

It is possible to source the following media files into the platform:

- Images (.gif, .png, .jpeg, .jpg, .tiff, .bmp, .svg)
- PDF files (.pdf)
- GTFS files (.zip)

You can create a source with media files and add them to a dataset with an archive file or via a URL.

.. admonition:: Important
   :class: important

   All formats considered images by the platform will be imported as such. It means that a thumbnail will be generated for these formats, activating the **Images** visualization. For more, information see :doc:`Configuring the Images visualization</publishing_data/07_configuring_visualizations/04_configuring_image_view/image>`.

   For other formats, such as PDF and GTFS files, no thumbnail will be generated, and the **Images** visualization will not be available. Users will only be able to download these files.

Sourcing media files with an archive file
-----------------------------------------

This method consists of building an archive file (see :ref:`Supported compressed file formats<supportedcompressedformats>`) with the media files and then importing it into the platform.

Step 1: Building the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The archive file must contain:

* the media files, and
* a CSV file listing the media files and their metadata.

No matter the format of the media files, they must be zipped together with the CSV file. For instance, if the media files are already zipped files, they must be zipped again altogether with the CSV file.

.. admonition:: Caution
   :class: caution

   We recommend keeping all images at the same level in the archive file. However, if images are into subdirectories, keep in mind to write the whole path in the CSV file.

Step 2: Creating the CSV file of the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The CSV file must at least contain a column with the names of the media files. It can contain other columns that will be considered as additional fields.

Example of a CSV file to create a dataset with media files:

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

Step 3: Sourcing the archive file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can use the archive file you created as a data source and upload it to the platform.

1. In Catalog > Datasets, click on the **New dataset** button.
2. In the wizard that opens, select **From my computer** under the **Retrieve a file** section.
3. Either drop the archive file or click **Browse** to locate the archive file in your local filesystem.
4. From the preview of the first 20 records that opens, configure the data source.
5. Configure the dataset information or use the pre-filled values.


Sourcing media files via URLs
------------------------------

This method consists of sourcing any :doc:`supported format <supported_formats>` file containing URLs of media files stored in a remote server and using a processor to define the media files and extract their metadata.

.. admonition:: Note
   :class: note

   For this method, Opendatasoft supports the HTTP protocol and its secured version HTTPS. Both should link to a single file.

Step 1: Create a dataset
~~~~~~~~~~~~~~~~~~~~~~~~

1. In Catalog > Datasets, click on the **New dataset** button.
2. In the wizard that opens, select the desired method under the **Retrieve a file** section.
3. From the preview of the first 20 records that appears, configure the data source.
4. Configure the dataset information or use the pre-filled values.

Step 2: Process the URLs
~~~~~~~~~~~~~~~~~~~~~~~~

1. Once the dataset is created, click on the **Processing** tab.
2. Click on the **Add a processor** button.
3. Choose the File processor in the Generic operations section.
4. In the File processor area, indicate which field contains the URLs of the media files.
5. *(optional)* In the File processor area, select the **Extract metadata** check box to import the related metadata of the images.

Example of a CSV file used to create a dataset with media files:

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
     * `http://website.com/file_name.png`
   * * Caption of PDF file
     * Media 2
     * `http://website.fr/file_name.pdf`
   * * Caption of ZIP file
     * Media 3
     * `http://another-website.com/file_name.zip`
   * * Caption of SVG file
     * Media 4
     * `http://website.com/file_name.svg`

In this example:

- the column "File" indicates the URL of the media files (which is also the column that will be used with the File processor)
- the columns "Title" and "Caption" are additional fields


Displaying images
-----------------

Once the images are imported into the platform, they can be displayed in 2 different ways:

- through the default **Images** visualization tab: an image gallery displaying all the images and their metadata, or 
- through a slideshow, which is `an Opendatasoft widget <https://help.opendatasoft.com/widgets/#/api/ods-widgets.directive:odsSlideshow>`_ you can add in any code area of the platform. For example, you can add it in the Custom view of the dataset or in a content page. In that case, images are displayed one by one.
