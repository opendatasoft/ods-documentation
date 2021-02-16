OSM connector
=============

The OSM File connector (OSM standing for OpenStreetMap) is used to extract data from OpenStreetMap files (.osm).

.. admonition:: Note
   :class: note

   A reliable server to download extracts from the OpenStreetMap project is `Geofabrik <http://download.geofabrik.de>`_. It provides exports for different regions of the world.

The OSM connector can also read XML (.xml) files.

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
     * By default, this check box is selected. To include all nodes and ways, clear this check box.
   * * Load additional OSM versioning metadata
     * Extracts the version number of each object. Values are stored in a "version" column.
     * By default, this check box is cleared.
   * * Use centroid for polygons instead of shapes
     * Uses the centroid of the polygons.
     * By default, this check box is cleared, meaning that shapes are used for polygons.
   * * OSM tags to map
     * Tags to extract from the nodes and ways.
     * Writes the tags to extract in the textbox. Tags should be separated with a comma.
   * * Relation tags
     * Tags to extract from attached relations.
     * Writes the tags to extract in the textbox. Tags should be separated with a comma.
