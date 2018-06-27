Visualizing data
================

OpenDataSoft features an in-depth visualization experience for you to explore a dataset in a rich and interactive manner.

The dataset information page displays the dataset metadata like its title, description, source, keywords, license, etc.

Depending on your dataset's columns, you will be able to explore it as a classic table, to project it on a map, or to display it thanks to various charts and widgets. You will also find all the images present in the dataset.

Finally, you will be able to export it in several file formats (depending on the nature of your data) and to consume it through an API.

Displaying data on a map
------------------------

This can be achieved by switching to the **Map** tab in the dataset explore page. For that tab to be available, your dataset must contain a geopoint or a geoshape field.

.. ifconfig:: language == 'en'

    .. image:: images/explore__map--en.png
       :alt: Explore Map

.. ifconfig:: language == 'fr'

    .. image:: images/explore__map--fr.png
       :alt: Explorer la carte

Displaying data on a chart
--------------------------

This can be achieved by switching to the **Analyze** tab in the dataset explore page. For that tab to be available, your dataset must contain facets or date/time fields.

.. ifconfig:: language == 'en'

    .. image:: images/explore__chart--en.png
       :alt: Explore Chart

.. ifconfig:: language == 'fr'

    .. image:: images/explore__chart--fr.png
       :alt: Explorer le graphique

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
