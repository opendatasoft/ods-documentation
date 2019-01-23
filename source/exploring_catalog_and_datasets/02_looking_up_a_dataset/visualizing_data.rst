Visualizing data
================

One of OpenDataSoft greatest strong points is the possibility of exploring a dataset through a variety of visualizations.

Up to 6 different visualizations are available, which completely depend on what kind of data the dataset contains. Among these 6 visualizations, there are 5 standard visualizations:

- the Table view, to visualize data in a table
- the Map view, to visualize data on a map
- the Analyze view, to visualize and analyze data through a chart
- the Images view, to visualize data through images
- the Calendar view, to visualize data in a calendar

The 6th visualization is called the "Custom view". It is completely optionnal and entirely custom. It means that even the label of the tab is chosen by the portal administrators, and they can differ from one dataset to another, even if they are on the same portal.


Visualizing data in a table
---------------------------

The Table view is accessible from the Table tab.

It displays a table containing all available fields from the dataset.

- In the header, the bold labels are the labels of the fields.
- In the table, each row represents a record. Each record contains several values.

.. admonition:: Note
   :class: note

   Hover the field labels to display the description of the field.

The Table view can be available for any dataset, no matter what can of data it contains.

Visualizing data on a map
-------------------------

The Map view is accessible from the Map tab.

It displays a map, on which there are map markers indicating the geographical location of a record from the dataset. When clicking on a map marker, its related tooltip is displayed. It contains more information about the record.

.. admonition:: Note
   :class: note

   Since the tooltips can be completely customized, their content can differ a lot from one dataset to another. They can also be disabled.

.. admonition:: Note
   :class: note

   Sometimes, the map markers can be replaced by circles containing a number. Those are called "clusters": they appear on a map when there are too many map markers in the same spot for them all to be displayed individually. The number of the cluster indicates how many map markers are "hidden" behind. Zoom in to see the map markers.

The map contains the a variety of buttons that allow to navigate and interact with the map:

* polygon |icon-polygon|, circle |icon-circle| and square |icon-square| buttons to draw on the map and filter on certain areas, along with the edit shape |icon-edit| and delete shape |icon-trash-map| buttons to go with them
* |icon-fullscreen| to view your map in fullscreen mode
* zoom in |icon-zoom-in| and zoom out |icon-zoom-out| buttons
* localize |icon-localize| button to focus the map on your current location

.. admonition:: Caution
   :class: caution

   Maps displayed in a Map view cannot be customized, except from choosing another basemap when possible. To be able to customize a map, or cross data from different datasets, as well as to save a created map, use the :doc:`Map Builder <../../creating_maps_charts/01_creating_advanced_maps/overview-of-map-builder>`.

Visualizing data through a chart
--------------------------------

The chart view is accessible from the Analyze tab.

It displays a default chart, set by the portal administrators. It is however possible, and encouraged, to configure other charts to make other analysis than the default one.

Above the chart are dislayed a variety of buttons and options to configure the chart:

- The first line is to configure the base of the chart.

  - X axis: to choose which field to use as X axis (horizontal line)
  - Max. number of points: to choose how many point should be represented on the chart
  - Default ordering: for points to be displayed in a decreasing order in the chart

- The second line is to define how the different series are represented.

  - Break down series: to separate the series into several groups
  - Stack: for series to be stacked one on top of the other
  - Add a serie: to display another serie on the chart

- The third and last line is to configure each serie separately.

  - a scroll-down menu: to choose a chart type for the serie
  - a color or color palette: to choose the color of the serie
  - Y axis: to choose which field to use as Y axis (vertical line)
  - Use for ordering: for points to be displayed in a decreasing order in the chart, based on the chosen serie

.. admonition:: Caution
   :class: caution

   Charts displayed in an analyze view can be modified. However, these modifications cannot be saved. To be able to save a created chart, as well as to cross data from different datasets, use the :doc:`Chart Builder <../../creating_maps_charts/02_creating_advanced_charts/analyze>`.

Visualizing data through images
-------------------------------

The images view is accessible from the Images tab.

It displays the thumbnails of the images of the dataset. When clicking on a thumbnail, the metadata of the image are displayed. Below the metadata is also displayed a Download image button, to download the selected image.

Visualizing data in a calendar
------------------------------

The calendar view is accessible from the Calendar tab.

It displays a calendar on which are displayed events of the dataset. When clicking on an event, its related tooltip is displayed. It contains more information about the event.

.. admonition:: Note
   :class: note

   Since the tooltips can be completely customized, their content can differ a lot from one dataset to another. They can also be disabled.

Above the calendar are displayed a variety of buttons to navigate the calendar:

- << and >> to see the dates of the current calendar page a year earlier or later
- < and > to see the month/week/day earlier or later the current calendar page
- Today to display today's calendar page
- month, week, day for the calendar page to display a whole month, week or just a day






Reusing a visualization
-----------------------

Any visualization built with OpenDataSoft can easily be reused as is.

.. image:: images/explore_embed.jpg
   :alt: Embed

At the bottom of the *Map* and *Chart* tabs, there is a widget that allows you to share a visualization you made:

* as a **Share** link, to share a direct access to the visualization,
* as an **Embed** code, to embed the visualization in an iframe on a remote web site,
* as a **Widget** code, to integrate the visualization as a widget in a content page using the OpenDataSoft ods-widgets framework.

**Listing reuses**

You can list reuses on the dataset page, to help promote both the reuse itself and your data. The reuses will be listed at the bottom of the information tab on each dataset page.
You can learn more about this feature in the section :doc:`Encouraging reuses </configuring_domain/04_sharing_reusing_communicating/engaging>`.

.. image:: images/explore__reuse--fr.png

Filtering the records
---------------------

On the left hand side of the dataset page, there is a filtering toolbar very similar to what is described in the paragraph :ref:`filtering-catalog`.


Default tab
-----------

You can choose between the **table tab** and the **information tab** as the default tab on which a dataset is opened. See :doc:`Configure catalog & dataset pages </configuring_domain/05_configuring_domain/tabs>` for more informations.





.. |icon-polygon| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-polygon.png
    :width: 16px
    :height: 16px

.. |icon-circle| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-circle.png
    :width: 14px
    :height: 14px

.. |icon-square| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-square.png
    :width: 14px
    :height: 14px

.. |icon-edit| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-edit.png
    :width: 16px
    :height: 16px

.. |icon-trash-map| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-trash-map.png
    :width: 15px
    :height: 17px

.. |icon-fullscreen| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-fullscreen.png
    :width: 20px
    :height: 20px

.. |icon-zoom-in| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-zoom-in.png
    :width: 14px
    :height: 14px

.. |icon-zoom-out| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-zoom-out.png
    :width: 13px
    :height: 12px

.. |icon-localize| image:: /creating_maps_charts/01_creating_advanced_maps/images/icon-localize.png
    :width: 16px
    :height: 16px
