Managing saved connections
==========================

The Opendatasoft platform allows you to save FTP, HTTP, Google Drive, SharePoint, Amazon S3, and Azure Blob Storage connections to easily reconnect to the service using the same connection information.

Saving a connection
-------------------

You can save your connection information when creating a dataset or adding an FTP, HTTP, Google Drive, SharePoint, Amazon S3, or Azure Blob Storage source to an existing dataset:

1. Create a dataset or add a source to a dataset.
2. When configuring the connection, select the **Save connection information** check box.
3. Configure the source and dataset information.

You can now reuse the saved connection and connect again to the service using the same connection information.

Accessing saved connections
---------------------------

Once saved, you can access your own connections from the Connections page in the back office:

1. From the back office, select **Catalog** > **Connections**.
2. If you want to filter connections, click **Connection type** at the top of the list, then select the desired connection type.

Editing a saved connection
--------------------------

After saving a connection, you can update your connection information.

1. From the back office, select **Catalog** > **Connections**.
2. Click |icon-action-menu| on the desired connection.
3. Click **Edit connection**.
4. From the wizard that opens, update your connection information.

Deleting a saved connection
---------------------------

You can permanently delete saved connections that are not used in any datasets. In other words, you cannot delete connections used in datasets. 
If you want to delete a connection used in datasets, you'll need to first delete the related datasets.

1. From the back office, select **Catalog** > **Connections**.
2. Click |icon-action-menu| on the desired connection.
3. Click **Delete connection**.
4. When prompted, confirm that you want to delete this connection.

The connection is permanently deleted and removed from the Connections page.



.. |icon-action-menu| image:: /_images/icon-action-menu.png
    :width: 20px
    :height: 20px
    :alt: action menu icon
