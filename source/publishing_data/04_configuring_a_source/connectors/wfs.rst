WFS connector
=============

The WFS connector is used to extract data from a WFS service.

.. admonition:: Important
  :class: important

  This connector is not available by default. Please contact Opendatasoft for the activation of this connector on a given Opendatasoft domain.

Creation
--------

1. Choose an option:
   
   - If you want to create a dataset, click **Catalog** > **Datasets** and click the **New dataset** button.
   - If you want to add a source to an existing dataset, click **Catalog** > **Datasets** and select the desired dataset. Then, click **Add a source**.

2. In the wizard that opens, select **WFS** under the **Configure a remote service** section.
3. Configure your HTTP connection:

   - Under the **Connection information to the HTTP server** section, enter the URL to the server in the **Server URL** box.
   - Under the **Path to the file** section, enter the path to the layer. It must contain the ``TypeName`` parameter. (for example, ``/wfs?service=WFS&TypeName=layername``)
4. From the preview of the first 20 records that appears, configure the source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.


Configuration
-------------

.. list-table:: Encoding
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * File encoding
     * Encoding of the file

       Character encoding is the way characters are represented in a saved file. Unicode (or UTF-8) is the universal standard, but some files might be encoded in a legacy format (for example, old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, select the right encoding to apply from the list or enter it in the **Other** text box. You can use any aliases from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_.

.. list-table:: WFS parameters
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Indicate the EPSG code matching the coordinate system (SRS)
     * Forces the SRS value if missing from the remote WFS service.
     * Enter the right EPSG code in the box.
   * * Force the coordinate system conversion to WSG84
     * Converts the geographical coordinates to EPSG:4326.
     * By default, this option is toggled on.
   * * Invert coordinates
     * Some WFS services return the coordinates reversed. This option inverts the coordinate order.
     * By default, option is toggled off.

.. include:: ../../../_includes/connectors_extractfilename.rst
