Dataset of datasets (domain) connector
======================================

The Dataset of datasets connector allows creating an index of the datasets of an Opendatasoft domain, optionally with all their related metadata and analytics, in the form of a dataset.

.. admonition:: Warning
  :class: danger

  Use this connector with much caution because it can give visibility to private data.

Creation
--------

.. admonition:: Note
   :class: note

   The Edit dataset permission is required to use this connector.

1. Choose an option:
   
   - If you want to create a dataset, click **Catalog** > **Datasets** and click the **New dataset** button.
   - If you want to add a source to an existing dataset, click **Catalog** > **Datasets** and select the desired dataset. Then, click **Add a source**.

2. In the wizard that opens, select **Dataset of datasets** under the **Configure a remote service** section.
3. From the preview of the first 20 records that appears, configure the source.
4. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
   * * Interoperability Metadata
     * If selected, interoperability metadata are retrieved and added to the dataset.
   * * Custom Metadata
     * If selected, custom metadata are retrieved and added to the dataset.
   * * Statistics
     * If selected, statistics of the dataset are retrieved and added to the dataset:

       - number of datasets,
       - size of the records in the dataset (in bytes),
       - number of reuses,
       - number of API calls,
       - number of downloads,
       - number of downloads of the datasets attachments,
       - number of downloads of the file fields,
       - popularity score.

   * * Private datasets
     * If selected, private datasets are added to the dataset. It also adds a "Visibility" field to the dataset. This field indicates whether the datasets are public ("domain") or private ("restricted").
   * * Staged datasets
     * If selected, staged datasets (meaning datasets that are created but not published) are added to the dataset. It also adds a "Published" field to the dataset. This field indicates whether the datasets are published ("true") or not ("false").
   * * Admin metadata
     * If selected, admin metadata are retrieved and added to the dataset.
