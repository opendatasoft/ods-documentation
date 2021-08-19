Exporting data
==============

.. image:: images/export.png
   :alt: Export a dataset

Opendatasoft datasets can be downloaded in various formats.
Flat file formats are always available for any dataset.
More specific formats can be available, depending on whether the dataset contains geographical coordinates or not.

1. Go to the **Export** tab of the dataset.
2. Choose the file format to download.
3. Perform one of the following actions:

   * Click **Whole dataset** next to the desired format.
   * If the dataset is filtered and you want to export the filtered data only, click **Only the selected records** next to the desired format.

.. admonition:: Note
   :class: note

   - You can use the parameter :code:`use_labels_for_header=true` in the exports links to use the labels instead of the technical identifiers of the fields as a header (not available in the Opendatasoft Search API v2).
   - You can also export datasets in other formats using the `Opendatasoft Search API v2 <https://help.opendatasoft.com/apis/ods-search-v2/#exporting-records>`_.  

Available export formats
------------------------

In the Export tab of a dataset, the following formats can be available:

Flat file formats
~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1
   :widths: 25 75

   * * Format
     * Notes
   * * CSV
     * CSV uses semicolon (;) as a separator. 
   * * JSON
     * 
   * * Excel
     * 

Geographic file formats
~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Important
   :class: Important

   The geographical coordinates of a dataset are expressed in WGS84 by default. When available, you can select additional geographical projections from the drop-down displayed above the export formats.

.. list-table::
   :header-rows: 1
   :widths: 25 75

   * * Format
     * Notes
   * * GeoJSON
     * 
   * * Shapefile
     * There are 2 limitations in Shapefile exports:

        - The export cannot contain more than 50,000 records.
        - The export cannot contain more than one geographical shape type (point, polygon, linestring, etc.). Only the first type of the first non-empty record will be kept in the export.

   * * KML
     * 

Exporting and downloading images
--------------------------------

Images imported into the platform can only be downloaded or exported one by one. There is no way to download all the images of a dataset at the same time.

Downloading an image
~~~~~~~~~~~~~~~~~~~~

1. In the front office, go to the **Images** visualization tab of the dataset containing the image(s) to download.
2. Click the image to download.
3. At the bottom of the image's metadata, click **Download image**.

Exporting dataset to retrieve image URL
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. In the front office, go to the **Export** tab of the dataset containing the images to export.
2. Export the whole dataset or only the selected records if the dataset is filtered.
3. Open the exported dataset in the spreadsheet software of your choice.
4. Find the field containing the URLs of the image and retrieve them.
