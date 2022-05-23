Google BigQuery connector
=========================

The Google BigQuery connector retrieves files from a Google BigQuery table.

.. admonition:: Prerequisites
  :class: important

   You need a Google BigQuery account to use the Google BigQuery connector. You also need to create a service account in the project containing the table you need to access and create a key for this account.


Creation
--------

1. Choose an option:

  - If you want to create a dataset, click Catalog > Datasets and click the New dataset button.
  - If you want to add a source to an existing dataset, click Catalog > Datasets and select the desired dataset. Then, click Add a source.

2. In the wizard that opens, select Google BigQuery under the Configure a remote service section.

3. Select an existing Google BigQuery connection or create a new connection.

4. If you want to create a new connection, fill the following informations:

  - Email address
  - Private key
  - Project ID
  - Dataset ID
  - Table ID

4. Check the preview showing the first 20 records of the table.

5. Configure the dataset information or use the pre-filled values:
      
  - In the **Dataset name** field, enter the title for this dataset.
  - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.