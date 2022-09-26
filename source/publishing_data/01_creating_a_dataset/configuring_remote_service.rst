Configuring a remote service
============================

You can configure a remote service to add a source while creating a dataset.

For a list of available connectors, see :ref:`connectors_remote_services`.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select the desired service under the **Configure a remote service** section.
3. Configure the connection to your source.

For Google Drive and SharePoint, you can select a saved connection or configure a new connection.
If you configure a new connection, select the **Save connection information** check box to save your connection.

4. From the preview of the first 20 records that appears, configure the source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.


After creating a dataset, an edition interface for that dataset opens. Only users granted with the right permissions, either "Create dataset" or "Edit dataset", can use this interface.

Using this edition interface, you can process the data, configure the datasets and their visualizations, and manage the publishing of the dataset. For more information, see:

- :doc:`/publishing_data/05_processing_data/processing_data`
- :doc:`/publishing_data/06_configuring_metadata/configuring_metadata`
- :doc:`/publishing_data/07_configuring_visualizations/index`
- :doc:`/publishing_data/11_saving_and_publishing_a_dataset/publish`

.. _connectors_remote_services:

Connectors to remote services
-----------------------------

Opendatasoft can connect to a variety of remote services.

.. admonition:: Important
  :class: important

  Contact your local support team to get on-demand connectors activated on your domain. Some of them are subject to pricing.

.. list-table::
  :header-rows: 1
  :widths: 15 20 10 10 7

  * * Connector
    * Description
    * Availability
    * Folder
    * Incremental
  * * :doc:`Airtable<connectors/airtable>`
    * Retrieves data from an Airtable base
    * On demand
    * N/A
    * ✅
  * * :doc:`Amazon S3<connectors/amazon_s3>`
    * Retrieves data from a file stored in an Amazon S3 bucket
    * On demand
    * Files only
    * ❌
  * * :doc:`ArcGIS<connectors/arcgis>`
    * Retrieves data from an ArcGIS server
    * Default
    * N/A
    * ❌
  * * :doc:`Azure Blob storage<connectors/azure_blob_storage>`
    * Retrieves data from a file stored in a Blob storage
    * On demand
    * N/A
    * ❌
  * * :doc:`Census<connectors/census>`
    * Retrieves data using the US Census Bureau's API
    * On demand
    * N/A
    * ❌
  * * :doc:`Dataset of datasets<connectors/dataset_of_datasets>`
    * Creates a dataset from the catalog of an Opendatasoft domain
    * Default
    * N/A
    * ❌
  * * :doc:`Eco Counter<connectors/ecocounter>`
    * Retrieves data about Eco Counter counters and counting sites
    * On demand
    * N/A
    * ✅
  * * :doc:`Feed<connectors/feed>`
    * Retrieves data from Atom and RSS feeds
    * Default
    * N/A
    * ✅
  * * :doc:`Google BigQuery<connectors/google_bigquery>`
    * Retrieves data from a Google BigQuery table
    * On demand
    * N/A
    * ✅
  * * :doc:`Google Drive<connectors/google_drive>`
    * Retrieves files located in Google Drive
    * On demand
    * Files only
    * ❌
  * * :doc:`JCDecaux<connectors/jcdecaux>`
    * Retrieves the state of JCDecaux bike stations
    * On demand
    * N/A
    * ✅
  * * :doc:`Netatmo<connectors/netatmo>`
    * Retrieves data using the Netatmo API
    * On demand
    * N/A
    * ✅
  * * :doc:`OpenAgenda<connectors/openagenda>`
    * Retrieves events from OpenAgenda agendas
    * On demand
    * N/A
    * ✅
  * * :doc:`Realtime<connectors/realtime>`
    * Pushes real-time data to the platform
    * On demand
    * N/A
    * ✅
  * * :doc:`Salesforce<connectors/salesforce>`
    * Retrieves data using the Salesforce API
    * On demand
    * N/A
    * ✅
  * * :doc:`SharePoint<connectors/sharepoint>`
    * Retrieves files located in SharePoint
    * On demand
    * Files only
    * ❌
  * * :doc:`WFS<connectors/wfs>`
    * Retrieves data from a WFS service
    * On demand
    * N/A
    * ❌

.. toctree::
   :hidden:

   connectors/airtable
   connectors/amazon_s3
   connectors/arcgis
   connectors/azure_blob_storage
   connectors/census
   connectors/dataset_of_datasets
   connectors/ecocounter
   connectors/feed
   connectors/google_drive
   connectors/google_bigquery
   connectors/jcdecaux
   connectors/netatmo
   connectors/openagenda
   connectors/realtime
   connectors/salesforce
   connectors/sharepoint
   connectors/wfs
