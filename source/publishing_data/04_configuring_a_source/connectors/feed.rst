Feed connector
==================

The Feed connector retrieves Atom and RSS feeds. By default, the connector only extracts the ``id``, ``title``, ``link``, ``description``, and ``published`` fields.


Creation
--------

1. Choose an option:
   
   - If you want to create a dataset, click **Catalog** > **Datasets** and click the **New dataset** button.
   - If you want to add a source to an existing dataset, click **Catalog** > **Datasets** and select the desired dataset. Then, click **Add a source**.

2. In the wizard that opens, select **Feed** under the **Connect to a remote service** section.
3. Configure your HTTP connection to import the feed.
4. From the preview of the first 20 records that appears, configure the data source.
5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.


Configuration
-------------

.. list-table:: Additional fields
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Additional fields
     * Extract additional fields
     * By default, the connector only extracts the ``id``, ``title``, ``link``, ``description``, and ``published`` fields. Toggle on this option to extract additional fields.
