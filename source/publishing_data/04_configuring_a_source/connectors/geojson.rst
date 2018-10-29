GeoJSON connector
=================

The GeoJSON File connector is used for dataset which source is a GeoJSON file (.geojson). As defined by the RFC 7946 GeoJSON specification, a GeoJSON should have the following structure:

.. code-block:: json

    {
        "type": "FeatureCollection",
        "features": [{
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [102.0, 0.5]
            },
            "properties": {
                "prop0": "value0"
            }
        }, {
            "type": "Feature",
            "geometry": {
                "type": "LineString",
                "coordinates": [
                    [102.0, 0.0],
                    [103.0, 1.0],
                    [104.0, 0.0],
                    [105.0, 1.0]
                ]
            },
            "properties": {
                "prop0": "value0",
                "prop1": 0.0
            }
        }, {
            "type": "Feature",
            "geometry": {
                "type": "Polygon",
                "coordinates": [
                    [
                        [100.0, 0.0],
                        [101.0, 0.0],
                        [101.0, 1.0],
                        [100.0, 1.0],
                        [100.0, 0.0]
                    ]
                ]
            },
            "properties": {
                "prop0": "value0",
                "prop1": {
                    "this": "that"
                }
            }
        }]
    }


.. admonition:: Note
   :class: note

   For more GeoJSON examples, go to `GeoJSON.org <http://geojson.org/geojson-spec.html#feature-collection-objects>`_.


Creation
~~~~~~~~

See :doc:`how to source a file</publishing_data/01_creating_a_dataset/sourcing_data>`.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, the box is not checked. Check the box to extract filename in an added column.
   * * Spatial reference (EPSG code)
     * Indicates the `EPSG <http://spatialreference.org/ref/epsg/>`_ code of the geographical data of the dataset.
     * By default, the textbox is empty and the platform considers the geographical data to be in WGS84 (EPSG code: 4326). If the default EPSG code is not right, write the right one in the textbox.
