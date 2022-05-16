Amazon S3 connector
===================

The Amazon S3 connector retrieves content from a file stored in an Amazon S3 bucket.

.. admonition:: Prerequisites
  :class: important

   You need an AWS account to use the Amazon S3 connector.

Creation
--------

1. Choose an option:

  - If you want to create a dataset, click Catalog > Datasets and click the New dataset button.
  - If you want to add a source to an existing dataset, click Catalog > Datasets and select the desired dataset. Then, click Add a source.


2. In the wizard that opens, select Amazon S3 under the Configure a remote service section.

3. Select an existing Amazon S3 connection or create a new connection.

4. If you want to create a new connection, fill the following informations:

   - URL
   - Region
   - Access key
   - Secret access key
   - Path
   - Headers (optional)

5. In the preview screen displaying the first 20 records of the file, set the source configuration.

6. Configure the dataset information or use the pre-filled values:

  - In the **Dataset name** field, enter the title for this dataset.
  - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.