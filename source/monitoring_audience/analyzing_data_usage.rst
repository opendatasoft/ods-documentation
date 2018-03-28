Analyzing data usage
====================

The Data dashboard displays statistics to analyze the data published on the portal. It is available in the Analytics > Data section of the back office.

This dashboard is separated into 5 sections:

- Totals: figures about the datasets published in the portal and their usage through that portal
- Popularity: statistics and charts to compute and analyze the popularity of the datasets published in the portal
- Top 5: list of most downloaded, used and reused published datasets
- Most used themes: tree chart to analyze most and least used themes
- Tag cloud: cloud of used tags

.. admonition:: Unpublished datasets ignored by the Data dashboard
   :class: note

   In this dashboard, only published datasets are taken into account. Unpublished datasets are ignored from all figures, charts and other computed analytics displayed.

Totals
------

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Description
  * * Datasets
    * Figure
    * Total number of published datasets in the portal
  * * Records
    * Figure
    * Total number of records in all published datasets combined
  * * Downloads
    * Figure
    * Total number of downloads in all published datasets combined
  * * API calls
    * Total number of API calls for all published datasets combined
  * * Reuses
    * Figure
    * Total number of reuses in all published datasets combined

.. screenshot

Popularity
----------

The Popularity section of the Data dashboard is based upon a computation that quantifies dataset consumption through a metric. This metric is based on 3 criterias: number of downloads, number of API calls and number of reuses. These 3 criterias combined into a formula (popularity = 3.22 -2 √[API calls] + 5.38 -2 √[Downloads] + [Reuses]) indicate whether a dataset published into an OpenDataSoft portal can be considered popular or not, compared to the other datasets of that portal.

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Description
  * * Most popular datasets
    * Bar chart
    * Top 5 most popular published datasets, along with their popularity scores displayed
  * * Least popular datasets
    * Bar chart
    * Top 5 least popular published datasets, along with their popularity scores displayed
  * * Median Popularity
    * Figure
    * Median popularity score computed from all popularity scores of all published datasets taken into account to compute the median (datasets with extreme popularity scores - unordinarily popular or unpopular datasets - are ignored)
  * * Average Popularity
    * Figure
    * Average popularity score computed from all popularity scores of all published datasets. In contrary to the median, to compute the average, all datasets are taken into account, without any exception.
  * * Popularity Sum
    * Figure
    * Sum of all popularity scores of all published datasets

.. screenshot

Top 5
-----

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Description
  * * Downloads
    * List
    * Top 5 most downloaded published datasets, along with the current amount of downloads for each dataset
  * * API Calls
    * List
    * Top 5 datasets with the most API calls, along with the current amount of API calls for each dataset
  * * Reuses
    * List
    * Top 5 datasets with the most reuses, along with the current amount of reuses for each dataset

.. screenshot

Most used themes
----------------

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Description
  * * Most used themes
    * Tree chart
    * Dataset themes represented with a tree chart to analyze which themes are the most and the least used

.. screenshot

Tag cloud
---------

.. list-table::
  :header-rows: 1

  * * Label
    * Type
    * Description
  * * Tag cloud
    * Tag cloud
    * Most used dataset keywords. The bigger the keywords, the most used they are. Each keyword is clickable: it then acts as a filter for the whole dashboard. To go back to the complete list of keywords, click again on the filter you just used.

.. screenshot
