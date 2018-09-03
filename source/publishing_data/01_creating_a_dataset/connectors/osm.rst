OSM connector
=============

The OpenStreetMap connector extracts data from OSM archives. The export can be compressed.

.. admonition:: Note
   :class: note

   A reliable server to download extract is `Geofabrik <http://download.geofabrik.de>`_. It provides export for different parts of the world.

File extensions
~~~~~~~~~~~~~~~

The following extensions are recognized: .osm and .xml.

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
   * * Keep only amenities
     * Filter the export to only keep node and way with the tag ``amenity``
   * * Tags
     * The tags to extract from the node or way
   * * Relation tags
     * The tags to extract from the attached relation
