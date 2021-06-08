OSM files
=========

You can use an OpenStreetMap file (.osm) as a data source.

.. admonition:: Note
   :class: note

   `Geofabrik <http://download.geofabrik.de>`_. is a reliable server to download extracts from the OpenStreetMap project. It provides exports for different regions of the world.

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Keep only amenities
     * Filters the export to only keep nodes and ways with the "amenity" tag. Amenities are important facilities for visitors and residents.
     * By default, this option is toggled on. Toggle off this option to include all nodes and ways.
   * * Load additional OSM versioning metadata
     * Extracts the version number of each object. Values are stored in a "version" column.
     * By default, this option is toggled off.
   * * Use centroid for polygons instead of shapes
     * Uses the centroid of the polygons.
     * By default, this option is toggled off, meaning that shapes are used for polygons.
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, this option is toggled off. Toggle on this option to extract the file name in an additional column.
   * * OSM tags to map
     * Tags to extract from the nodes and ways.
     * Enter the tags to extract in the **OSM tags to map** box. Tags should be separated with a comma.
   * * Relation tags
     * Tags to extract from attached relations.
     * Enter the tags to extract in the **Relation tags** box. Tags should be separated with a comma.
