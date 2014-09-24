## Records Geo Clustering API

This API provides powerfull geo clustering features over a set of selected records. It returns results under a format which can easily be used to build comprehensive data visualizations on a map, using a very large number of records.

This API takes as an input the cluster precision and a polygon representing the current view (on a map) and returns a list of clusters with the number of points contained in each cluster and the polygon of the cluster envelope (along with computed analytical series when required).

The clustering results are returned in JSON.

**API endpoint**: `/api/records/1.0/geocluster`

**Query**

Parameter Name | Description
-------------- | -----------
datasetid | Identifier of the dataset. This field is mandatory.
q | The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.
geofilter.distance | Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): `latitude,longitude,distance`. Example: `geofilter.distance=48.8520930694,2.34738897685,1000`
geofilter.polygon | Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84): `(lat1,lon1),(lat2,lon2),(lat3,lon3)`. Example: `geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)`
refine.&lt;FACET&gt; | Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: `refine.city=Paris`, `refine.city=Paris&refine.year=2013`
exclude.&lt;FACET&gt;	| Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: `exclude.city=Paris`, `exclude.city=Paris&exclude.year=2013`
format | Format of the response output. One of JSON (default), CSV and GeoJSONP.
callback | JSONP callback. Example: `format=jsonp&callback=myFunction`
clusterprecision | The desired precision level, depending on the current map zoom level (if used through Leaflet, the Leaflet zoom level can be used). This parameter is mandatory.
shapeprecision | Defines the precision of the returned cluster envelope. The sum of clusterprecision and shapeprecision may not exceed 29.
clustermode	| Defines the desired clustering mode. Supported values are `polygon` (default) and `heatmap`.
y.&lt;SERIE&gt;.fun and y.&lt;SERIE&gt;.expr | This API may also accept a serie definition as described in the records analysis API. If a serie is defined, the aggregation will be performed using the values of the serie. For example: `clusterprecision=6&y.serie1.expr=height&y.series1.func=SUM`