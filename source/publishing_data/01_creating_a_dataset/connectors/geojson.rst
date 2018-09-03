GeoJSON connector
=================

A GeoJSON file as defined by the ``RFC 7946``, one simple GeoJSON is:

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

   You can find more examples on `GeoJSON.org <http://geojson.org/geojson-spec.html#feature-collection-objects>`_


File extensions
~~~~~~~~~~~~~~~

The following extensions are recognized: .geojson and .json.

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * Spatial reference (EPSG code)
     * The EPSG code of the geographical data
     * One EPSG code
