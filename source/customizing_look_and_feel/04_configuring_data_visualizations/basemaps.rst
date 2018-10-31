Basemaps
========

Basemaps are the canvas used for any map displayed on OpenDataSoft, whether it is that of the visualization map of a dataset or that of the Map Builder. It is on these canvas that the data will be represented.

A basic neutral basemap is used by default for all maps of an OpenDataSoft. It is however possible to add other basemaps to an OpenDataSoft portal, to be able to change the basemap at any time on a map, and even to change the default basemap of a specific map.

.. admonition:: Note
   :class: note

   To know more about basemaps and how to use them, you can read our blog post "What is a basemap & how to choose the best one for your data".


Adding basemaps
---------------

To choose which basemaps will be available on an OpenDataSoft portal, go to Look & feel > Data visualizations. In this subsection of the back office menu, look for the "Basemaps" area.

Basemaps should be added and configured in the table of the "Basemaps" area. This table displays the currently available basemaps that can be used on the domain. It comprises 5 columns:

- [icon] to change the order of the basemaps (the first being the default one on the whole domain)
- Label: to name the available basemaps, each having one label per language available on the domain
- Basemap: to choose the basemap
- Preview: to see what the basemap looks like
- [icon] to delete a basemap



To add a basemap to the table:

1. Click on the + Add basemap button under the table.
2. In the Basemap column, click on the drop-down box. By default, it should display "Streets" (default basemap for all OpenDataSoft domains).
3. The drop-down menu indicates all basemaps available in the domain, ordered by basemap providers. Click on the basemap to add to the domain.
4. In the Label column, indicate a label for the newly added basemap. There must be one label per language (if the domain supports more than one), otherwise the configurations cannot be saved.
5. Click on the Save button in the top right corner of the page.




Integrating new basemaps
------------------------

By default, a fair amount of basemaps are available on each OpenDataSoft domain. It is however possible to integrate other basemaps to the list, and later add them to the table of currently available basemaps that can be used on the domain.

There are 4 possible ways to integrate new basemaps:

- through a Mapbox integration to add new Mapbox basemaps,
- through a Thunderforest integration to fully use the 2 already available Thunderforest basemaps,
- by adding custom TMS basemaps,
- or by adding custom WMS basemaps.


Mapbox integration
~~~~~~~~~~~~~~~~~~

`Mapbox <https://www.mapbox.com/>`_ is a mapping platform that allows to build and design custom maps. They also
provide a dozen different map styles that can be directly used. OpenDataSoft allows to integrate these Mapbox basemaps into an OpenDataSoft domain, to make them usage throughout the portal.

.. admonition:: Prerequisite
   :class: important

   A Mapbox account is required. It is possible to create a Mapbox account for free, although it is going to have a small number of allowed "map views". See `Mapbox plans <https://www.mapbox.com/plans/>`_ for more information.


To integrate Mapbox basemaps:

1. Go to the Mapbox website, logged in.
2. In the `Mapbox account page <https://www.mapbox.com/account/apps/>`_, either copy the Default Public Token, or create a new Public Token and copy it. This will be used by OpenDataSoft to display maps on the behalf of the user's own Mapbox account.
3. Go back to the Look & feel > Data Visualizations subsection of the OpenDataSoft's domain back office.
4. In the "Basemaps" area, click on "Mapbox integration" to expand the related configurations.
5. Paste the Public Token in the textbox. A message will confirm whether the access token is valid or not.

Using the basemaps table, it is now possible to select one of Mapbox's default styles, or choose "Custom" to enter the MapID of a custom created map.

.. ifconfig:: language == 'en'

    .. image:: images/basemaps__mapbox-custom-tiles--en.png
       :alt: Custom tiles configuration

.. ifconfig:: language == 'fr'

    .. image:: images/basemaps__mapbox-custom-tiles--fr.png
       :alt: Configuration des tuiles personnalisées


Thunderforest integration
~~~~~~~~~~~~~~~~~~~~~~~~~

`Thunderforest <https://www.thunderforest.com/>`_ is a basemaps provider for websites and applications. By default, 2 Thunderforest basemaps are available on any OpenDataSoft domain: "OpenCycleMap" and "OSM Transport". Although these 2 basemaps are available, they can only be used within the default, limited quotas. In the case of having a Thunderforest account, it could be a good idea to configure the Thunderforest integration and fully use the basemaps.

.. admonition:: Important
   :class: important

   The Thunderforest integration does not allow the integration of other Thunderforest basemaps.

To fully use the default Thunderforest basemaps:

1. Go to the Thunderforest website, logged in.
2. In the `Thunderforest console page <https://manage.thunderforest.com/dashboard>`_, copy the API Key.
3. Go back to the Look & feel > Data Visualizations subsection of the OpenDataSoft's domain back office.
4. In the "Basemaps" area, click on "Thunderforest integration" to expand the related configurations.
5. Paste the API Key in the textbox.


Custom TFS basemap addition
~~~~~~~~~~~~~~~~~~~~~~~~~~~

...


Custom WMS basemap addition
~~~~~~~~~~~~~~~~~~~~~~~~~~~

...
