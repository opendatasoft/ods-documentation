Configure catalog & dataset pages
=================================

This section explains which features can be configured on the catalog and dataset pages.

Catalog page
------------

**Geographic filter**

If you have datasets with geographic metadatas, you can give users the possibility to filter the catalog for datasets in a specific area using a mini-map in the filters bar.
See :doc:`Navigating the catalog </exploring_catalog_and_datasets/01_navigating_the_catalog/catalog>` for more details.

This feature can be enabled or disabled in the ``Configuration`` section in the menu bar, then on the ``Catalog page & dataset pages`` link

.. image:: images/configuration_geo-filter.png


Dataset page
------------

Users can explore and analyze datasets using different visualizations and tools, each one available in a tab in the dataset page.
See :doc:`Visualizing data </exploring_catalog_and_datasets/02_looking_up_a_dataset/visualizing_data>` for more details.

**Default tab**

By default the dataset is opened on the **table view**, but you can choose to display the **information tab** instead. The table view by default is useful to give users with a direct access to the data, whereas the information tab by default is interesting to provide users with context and description first.

.. image:: images/configuration_default-tab.png


Geographic filter
-----------------

The geographic filter allows to search datasets in the catalog based on the geographical location of their data (see Filtering the catalog using the geographic filter). By default, this filter is not activated. When activated, it can either be configured:

- at an international level, to enable international geographic filtering,
- or at a national level, to only enable geographic filtering for a chosen country.

To activate the geographic filter at an international level:

1. Click on the International option.
2. (optional) Click on the "Display countries available levels" button to enable filtering the catalog with the different administrative levels available for each country.

.. admonition:: Important
   :class: important

   Not each and every country of the world are available in the geographic filter. See [LINK DATASET] for the list of currently supported countries.

To activate the geographic filter at a national level:

1. Click on the National option.
2. Choose the only country that will be available in the geographic filter, using the Country drop-down list.
3. For the chosen country, select the highest administrative level available that users will be able to use as filter, using the Highest level drop-down list.
4. For the same chosen country, select the lowest administrative level available that users will be able to use as filter, using the Lowest level drop-down list. Users will be able to filter with all administrative levels comprised between the highest and lowest chosen administrative levels.
5. Choose a geographic location as default filter. By default, the chosen location will be the starting point of the geographic filter, and the catalog will be filtered on this location.
