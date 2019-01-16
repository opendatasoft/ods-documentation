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

It displays a map, on which there are map markers indicating the geographical location of a record from the dataset.

Visualizing data through a chart
--------------------------------

This can be achieved by switching to the **Analyze** tab in the dataset explore page. For that tab to be available, your dataset must contain facets or date/time fields.

.. ifconfig:: language == 'en'

    .. image:: images/explore__chart--en.png
       :alt: Explore Chart

.. ifconfig:: language == 'fr'

    .. image:: images/explore__chart--fr.png
       :alt: Explorer le graphique

Visualizing data through images
-------------------------------



Visualizing data in a calendar
------------------------------






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
