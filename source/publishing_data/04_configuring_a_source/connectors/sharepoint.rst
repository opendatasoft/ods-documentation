SharePoint connector
=====================

The SharePoint connector retrieves files from Microsoft SharePoint.

For more information about the supported file formats, see :ref:`supportedformats`.

.. admonition:: Prerequisite
   :class: important
   
   You need a Microsoft 365 account to use the SharePoint connector.

Creation
--------

1. Choose an option:
   
   - If you want to create a dataset, click **Catalog** > **Datasets** and click the **New dataset** button.
   - If you want to add a source to an existing dataset, click **Catalog** > **Datasets** and select the desired dataset. Then, click **Add a source**.

2. In the wizard that opens, select **SharePoint** under the **Configure a remote service** section.
3. Select an existing SharePoint connection or create a new connection.
4. If you want to create a new connection, perform the following steps:

   a. Click **Sign in with Microsoft** and connect to your Microsoft 365 account.
   b. After evaluating the permissions requested, click **Accept** to grant authorization to the SharePoint connector to access your SharePoint folders and files.

5. Under **Retrieve the file**, click **Browse SharePoint**.
6. From the dialog box that appears, select the file to be used a source.
7. From the preview of the first 20 records that appears, configure the source.
8. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.

