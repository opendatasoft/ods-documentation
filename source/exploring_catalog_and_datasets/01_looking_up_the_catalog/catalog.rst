Looking up the catalog
======================

OpenDataSoft lets you find datasets with a rich search based experience. The catalog is often accessible via the **Explore** or **Datasets** link on the header menu. It allows to filter through all the portal's datasets by keyword, publisher, date or theme, among others.

.. image:: images/explore_all.png
   :alt: Explore catalog

Navigating in the catalog
-------------------------

The main part of the catalog shows a series of cards representing each dataset available on the platform. On each card, the dataset's metadata are displayed, along with quick links to visualize the data.

.. image:: images/explore_card.png
   :alt: Dataset card

On this example, the card is split in two parts. On the left part, there is a theme pictogram, the title, a description, the language and license, keywords and the original publisher. On the right part, there are links to access the data table, a map and analysis tools, and to export or access the API of the dataset.

Like most of the catalog's elements, this card is fully customizable.

.. _filtering-catalog:

Filtering the catalog
---------------------

On the left hand side of the catalog sits the filtering menu. It allows the user to sort the dataset list by date or title, and to filter it with precision.

Full text search
~~~~~~~~~~~~~~~~

The text box filters the list thanks to a full text search across all the datasets. It means it will show any dataset that contains the searched text in any of its metadata.

.. image:: images/filters_search.png
   :alt: Search box

Type the searched text in the box and click on the magnifying glass pictogram to filter the list via a full text search.

Geographic search
~~~~~~~~~~~~~~~~~

Datasets are often closely related to a geographic area, be it a country, a city, a district, etc.

The map filters the list by location. It will only show datasets that contain geographic data (geopoints or geoshapes mainly) inside the selected rectangle on the map.

.. localizedfigure:: images/geographic_search__explore.png

   The mini-map used for filtering on the catalog page.

Click on the little rectangle button on the top left of the map to select the drawing tool, and draw a rectangle on the area you want on the map to activate the filter. To cancel a selection, just click on the rectangle button again.

This feature can be enabled in the back office, in the ``Configuring`` section, under the ``Configure catalog & dataset pages`` link. See :doc:`Configure catalog & dataset pages </configuring_domain/05_configuring_domain/tabs>` for more details.

Filters
~~~~~~~

Under the geographic search map, there is a list of selectable filters sorted by category. They are constructed from the datasets metadata and enable the user to filter all the datasets that have the same attributes like language, theme, keywords, publisher, date, among others.

.. image:: images/filters_facets.png
   :alt: Selectable filters

Click on the values you want to use to filter the dataset list. For some categories
like keywords and themes, it is possible to select multiple values, and for some
others like modification date, the selection is hierarchical. For example,
selecting a year will let you to choose the month.

In the case of keywords, you can also click on them directly on a dataset card to
filter the catalog on that keyword.

.. admonition:: Note
   :class: note

   The catalog filters of a portal can be customized, including which filters are proposed, the order of the filters, and how to order the suggested values. Please contact us for more information.

Exploring a dataset
-------------------

Once you find your dataset, it is time to explore the data by clicking on the card title or description to switch to the `dataset page`__.

__ dataset.html
