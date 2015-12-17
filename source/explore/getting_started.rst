Visualizing Datasets
====================

OpenDataSoft lets you explore datasets content with a rich search based experience. It also makes it possible to 
visualize datasets content on charts and maps.

Displaying dataset content on a map
-----------------------------------

This can be achieved simply by switching to the *map tab* in the dataset explore console. For that tab to be available, 
your dataset must contain a *geo point* or a *geo shape* field. 

.. image:: explore_map.jpg
   :alt: Explore Map

OpenDataSoft is compliant with Esri software!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Esri is the worldwide leader in Geographic Information Systems (GIS).

Any OpenDataSoft customer can easily publish their Esri data and display geolocated information on Esri basemaps
directly with the OpenData Soft platform.

.. raw:: html

   <iframe src="https://player.vimeo.com/video/75712496" width="500" height="313" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Displaying dataset content on a chart
-------------------------------------

This can be achieved by switching to the *analysis tab* in the dataset explore console. For that tab to be available, 
your dataset must contain facets or date(time) fields.

.. image:: explore_chart.jpg
   :alt: Explore Chart

Building advanced geo mashups
-----------------------------

**Cartograph** lets you build advanced geo mashups, combining various datasets on the same map and finely tuning their 
representation. Cartograph can either be accessed from the main menu links (if they have been configured by the domain 
administrator) or from its direct URL: *http://mydomain.opendatasoft.com/map*.

.. image:: explore_cartograph.jpg
   :alt: Cartograph

Building advanced charts
------------------------

**ChartBuilder** lets you build advanced charts, combining on the same chart various datasets. ChartBuilder only 
supports time series representation for now. It can be accessed either from the menu links (if they have been configured 
by the domain administrator) or from its direct URL: *http://mydomain.opendatasoft.com/chart*.

.. image:: explore_chartbuilder.jpg
   :alt: ChartBuilder

Reusing a visualization
-----------------------

Any visualization built with OpenDataSoft can easily be reused as is.

.. image:: explore_embed.jpg
   :alt: Embed

The above widget, which is made available within any of the data visualization authoring tools, let's you share a 
visualization in various ways:

* As a *Share* link, to share a direct access to the visualization
* As an *Embed* code, to embed the visualization in an iframe on a remote web site
* As a *Widget* code, to integrate the visualization as a widget in a content page using the OpenDataSoft ods-widgets 
  framework

.. ifconfig:: language == 'en'

   .. raw:: html

      <iframe src="https://player.vimeo.com/video/72805856" width="500" height="256" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

.. ifconfig:: language == 'fr'

   .. raw:: html

      <iframe src="https://player.vimeo.com/video/72049167" width="500" height="256" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

Saving a visualization
----------------------

Cartograph and ChartBuilder based data visualizations can be saved. The save option is only available to users with an 
account on the domain.

Saved visualizations can be accessed from the user profile (top menu link).

.. image:: explore_saveddataviz.jpg
   :alt: Saved Visualizations