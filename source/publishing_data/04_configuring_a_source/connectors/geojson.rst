GeoJSON files
=============

You can use a `GeoJSON <https://geojson.org/geojson-spec.html#feature-collection-objects>`_ file (.geojson) as a data source.

As defined by the RFC 7946 GeoJSON specification, a GeoJSON should have the following structure:

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

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Coordinate system
   :header-rows: 1
   :name: coordinate-system

   * * Name
     * Description
     * Usage
   * * Coordinate system
     * The `EPSG <https://spatialreference.org/ref/epsg/>`_ code of the dataset's geographical data
     * The default value is 4326 because the platform considers the GeoJSON uses WGS 84 coordinates. To override the default value, enter the new EPSG code in the **Coordinate system** box.

.. include:: ../../../_includes/connectors_extractfilename.rst
