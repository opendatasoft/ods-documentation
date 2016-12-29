Geographic search for datasets
==============================

Datasets are often closely related to a geographic area, be it a country, a city, a district, etc. OpenDataSoft
allows you to associate a geographic area to a dataset so that your users can filter the catalog by delimiting an
area on a map.

Specifying a geographic area on a dataset
-----------------------------------------

You can specify a geographic area in 3 different ways.

1. If your data contain geographic points, the platform can compute the geographic envelope (the convex-hull) of all
   records,
2. You can draw the area on a map,
3. If you already have the shape of the geographic area available in GeoJSON, you can simply paste the shape.

.. ifconfig:: language == 'en'

   .. figure:: geographic_search__publish--en.png

      The options for defining the geographic area

.. ifconfig:: language == 'fr'

   .. figure:: geographic_search__publish--fr.png

      The options for defining the geographic area

You'll be able to define the geographic area in the *information* tab of dataset's publish page, alongside all the
other metadata for the dataset.

Searching for datasets through their related geographic area
------------------------------------------------------------

.. important::

   You'll have to activate the *Display map on catalog page for geographic search* option within your portal's
   *explore* settings.

Once you have activated the feature on your portal and have defined geographic areas on at least one dataset, you will
see a map show up below the search box in the filters' column.

.. ifconfig:: language == 'en'

   .. figure:: geographic_search__explore--en.png

      The mini-map used for filtering on the catalog page.

.. ifconfig:: language == 'fr'

   .. figure:: geographic_search__explore--fr.png

      The mini-map used for filtering on the catalog page.

You can now draw a square area on the mini-map. This will filter the catalog and only show datasets which have a
geographic area intersecting the drawn area. As a result, datasets without any geographic area set won't be listed.
