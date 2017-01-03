Mapping with the Map Builder
============================

.. note:: Read how to :doc:`configure visualizations </sourcing_and_processing_data/configuring_visualizations/map>` for a dataset beforehand.

With the Map Builder tool, you can visualize multiple datasets on a single customized map. You can save your map and easily share it or embed it on a third party site.

It is usually made available by the domain administrator in the top menu link under the codename `Cartograph`. The Map Builder can also be accessed using its URL: ``http://<DOMAIN ADDRESS>/map``.

You start with an empty map, on which you can add a dataset. The dataset can be filtered beforehand using `Filter data`
before selection.

Then you have several options to customize types of points, icons, shapes, or even heat maps.

You can add multiple datasets: each dataset layer can be customized with its own parameters.

With the preview mode you can check the final result.

At any times you can save your map to continue editing later, or share it when you are finished.

Let's create a map with some data from the City of Paris as an example.


Choose a base map
-----------------

Using this button |mapbox| you can choose the default base map of your map.

.. |mapbox| image:: mapbox.png


See the :doc:`Mapbox integration section </customizing_look_and_feel/basemaps>` for more information on base maps.


First layer
-----------

The Map Builder starts with an empty default map in edition mode.

Click on ``Add a dataset to this layer`` to start importing some data on your map.

The list of available datasets is displayed: you can search or browse by category to find your datasets.
As usual you can preview and filter a dataset before importing it.

For this example, let's take the public dataset "`Les espaces verts`" from `Open Data Paris`

Click on ``Select`` to complete the import and display the data on your map.

.. tip:: You can filter after importing using the ``Edit`` button.

Under the dataset title, in the right pane, you can choose between different visualizations types:

* ``Display points``: forces the display of geo points and do not clusterize. 

  Do not choose this display mode if your dataset contains more than 1000 points as this might consume a lot of resources on the client web browser.
* ``Display shapes``: forces the display of geo shapes (when relevant).

  In this mode, you can choose to have the geo shapes colors depend on the aggregated value of a field. To do so, select an aggregation function and the field it should be applied to.
* ``Display polygon clusters``: displays clusters or points depending on the zoom level and the volume of data to display.

  This mode is designed to display smoothly datasets containing a large number of records. This is the mode use by default in the catalog datasets view.
* ``Heatmap clustering``: builds heatmap clusters filled with a color depending on the number of geo points (or polygon centroids) in an area.

  In this mode, you can choose to have the heatmap cluster colors depend on the aggregated value of a field. To do so, select an aggregation function and the field it should be applied to.

By default the selected layer view is `Display polygon clusters`.

The default icons and colors used for a dataset are configured by the dataset publisher but you can override them from the Map Builder using the corresponding action buttons.

Stacking datasets
-----------------

You can repeat the previous steps to create new layers of data and produce richer visualizations.