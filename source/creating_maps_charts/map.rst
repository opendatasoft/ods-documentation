Mapping data
============

.. note:: Read how to :doc:`configure visualizations </sourcing_and_processing_data/configuring_visualizations/map>` for a dataset beforehand.

This tool provides a nice interface to extract information from multiple datasets to visualize on a single map.

It is accessible on a top menu link under the codename `Cartograph`.

You start with an empty map, on which you can add a dataset. The dataset can be filtered beforehand using `Filter data`
before selection.

Then you have several options to customize types of points, icons, shapes, or even heat maps.

You can add multiple datasets: each dataset layer can be customized with its own parameters

With the preview mode you can check the final result

At all times you can save your map to continue editing later, or share it when you are finished.

Let's create a layered map of Paris' transport network.


Choose a base map
-----------------

Using this button |mapbox| you can choose the appearance of your base map

.. |mapbox| image:: mapbox.png


See the :doc:`Mapbox integration section </customizing_look_and_feel/basemaps>` for more information.


First layer
-----------

Cartograph starts with an empty default map in edition mode.

Click on |add_dataset| ``Start by adding a dataset`` to start importing some data to your map.

.. |add_dataset| image:: add_dataset_to_basemap.svg
  :width: 30px

The list of datasets available will appear: you can search or browse by category to find your datasets.
As usual you can preview and filter the dataset before importing it.

For this example, let's take the public dataset "`Les espaces verts`" from `Open Data Paris`

Click on ``Select`` to conclude the import and see them in your map.

.. tip:: You can filter after importing using ``Edit``, then ``Change filter``


Under the layers panel, you can choose between different visualizations types.

By default the selected layer view is `Dots and shapes`. Whether it's dots or shapes depends on the data: in the `Espaces verts` cases you will see shapes.

Try `Cluster` view: clusters or points will appear, depending on your zoom level.

The dataset author can configure the default icon and color, but you're free to change it.

See :ref:`customizing-icons` for an example.


Stacking datasets
-----------------





.. _customizing-icons:

Customizing icons
-----------------
