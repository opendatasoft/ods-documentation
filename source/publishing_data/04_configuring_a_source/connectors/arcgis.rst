ArcGIS connector
================

The ArcGIS connector is used to import layers from an ArcGIS server via ArcGIS REST API, using the following syntax:

``https://<host>/<site>/rest/services/<folder>/<serviceName>/<serviceType>/<layerId>``

Creation
--------

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **ArcGIS** under the **Connect to a remote service** section.
3. Configure your HTTP connection to import the ArcGIS layer:

   - Under the **Connection information to the HTTP server** section, enter the URL to the ArcGIS server in the **Server URL** box. For example, ``http://sampleserver3.arcgisonline.com/``.
   - Under the **Path** section, enter the path to the layer. For example, ``/ArcGIS/rest/services/Hurricanes/NOAA_Tracks_1851_2007/MapServer/0``.
4. From the preview of the first 20 records that appears, configure the data source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Decode values
     * Decode coded values for a domain
      
       For coded domains in ArcGIS, coded values are associated with a more user-friendly description, for example, "70" for "Bus lane".
     * When the source includes coded values, this option is toggled on by default.
       
       Coded values (for example, "70") are decoded to display a more user-friendly description of what the code value means (for example, "Bus Lane").
