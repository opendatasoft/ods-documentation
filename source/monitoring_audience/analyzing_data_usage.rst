Analyzing data usage
====================

The Data dashboard displays statistics to analyze the data published on the portal. It is available in the Analytics > Data section of the back office.

This dashboard is separated into 4 sections:

- Totals: figures about the datasets published in the portal and their usage through that portal
- Popularity: statistics and charts to compute and analyze the popularity of the datasets published in the portal
- Top 5: lists of most downloaded, used and reused published datasets
- Theme Distribution: tree chart to analyze most and least used themes

.. admonition:: Datasets used to build the Data dashboard
   :class: important

   In this dashboard, only published datasets are taken into account. Unpublished datasets are ignored from all figures, charts and other computed analytics displayed.

   It is however possible, by clicking the buttons at the top of the dashboard, to choose to build the dashboard:

   - with all existing published datasets (checked by default)
   - only with the private datasets, meaning those in restricted access, no matter the restriction
   - or, only with the public datasets, meaning those accessible by everyone.

   Depending on which datasets are used to build the Data dashboard, the displayed figures, charts and analytics will vary.

Totals
------

.. list-table::
  :header-rows: 1

  * * Label
    * Description
  * * Datasets
    * Total number of published datasets in the portal
  * * Records
    * Total number of records in all published datasets combined
  * * Downloads
    * Total number of downloads in all published datasets combined
  * * API calls
    * Total number of API calls for all published datasets combined
  * * Reuses
    * Total number of reuses for all published datasets combined

.. screenshot

Popularity
----------

The Popularity section of the Data dashboard is based upon a computation aiming at quantifying dataset consumption in order to establish popularity scores for datasets. This computation is based on 3 metrics: number of downloads, number of API calls and number of reuses. These 3 metrics indicate whether a dataset published into an OpenDataSoft portal can be considered popular or not, compared to the other datasets of that portal.

The Popularity section is divided into 2 parts:

- on the left, 2 bar charts:

  - the top 5 most popular datasets
  - below, the top 5 least popular datasets

- on the right, information about the popularity score of the selected dataset:

  - Label of the selected dataset
  - Dataset ID: technical identifier of the selected dataset
  - Metrics: number of downloads, API calls and reuses (if any) for the selected dataset
  - Popularity Score: popularity score of the selected dataset, computed with the metrics displayed above

To display the popularity score information of a dataset:

1. In any of the charts, click a bar (representing a dataset).
2. Check the right part of the Popularity section: the information of the selected dataset are automatically displayed.

.. admonition:: Popularity score distribution over all published datasets
   :class: note

   Click the "See more" button at the bottom the Popularity section to see a column chart that displays the popularity score distribution over all published datasets.

.. screenshot

Top 5
-----

.. list-table::
  :header-rows: 1

  * * Label
    * Description
  * * Downloads
    * Top 5 most downloaded published datasets, along with the current amount of downloads for each dataset
  * * API Calls
    * Top 5 datasets with the most API calls, along with the current amount of API calls for each dataset
  * * Reuses
    * Top 5 datasets with the most reuses, along with the current amount of reuses for each dataset

.. screenshot

Theme Distribution
------------------

.. list-table::
  :header-rows: 1

  * * Label
    * Description
  * * Most used themes
    * Tree chart representing all currently used dataset themes. This chart helps analyzing which themes are the most or the least used.

.. admonition:: Average popularity score per theme
   :class: note

   Hover a theme in the tree chart to display the average popularity score of the datasets which belong to that theme.

.. screenshot
