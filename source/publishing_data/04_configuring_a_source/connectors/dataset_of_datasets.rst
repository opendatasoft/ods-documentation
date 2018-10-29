Dataset of datasets (domain) connector
======================================

.. admonition:: Warning
   :class: danger

   This connector should be use with much caution because it can give visibility to private data.

The Dataset of datasets connector allows to create an index of the datasets of an OpenDataSoft domain, optionally with all their related metadata and analytics, in the form of a dataset.

Creation
--------

.. admonition:: Note
   :class: note

   The Edit dataset permission is required to use this connector.

1. Enter ``domaindatasets://`` in the Enter a URL area, when creating a new dataset.
2. Press Enter, or click the + button.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
   * * Interoperability Metadata
     * If checked, interoperability metadata are retrieved and added to the dataset.
   * * Custom Metadata
     * If checked, custom metadata are retrieved and added to the dataset.
   * * Statistics
     * If checked, statistics of the dataset are retrieved and added to the dataset:

       - number of datasets,
       - size of the records in the dataset (in bytes),
       - number of reuses,
       - number of API calls,
       - number of downloads,
       - number of downloads of the datasets attachments,
       - number of downloads of the file fields,
       - popularity score.

   * * Private datasets
     * If checked, private datasets are added to the dataset. Also adds a "Visibility" field which indicates whether the datasets are public ("domain") or private ("restricted").
   * * Staged datasets
     * If checked, staged datasets (meaning datasets that are created but not published) are added to the dataset. Also adds a "Published" field which indicates whether the datasets are published ("true") or not ("false").
   * * Admin metadata
     * If checked, admin metadata are retrieved and added to the dataset.
