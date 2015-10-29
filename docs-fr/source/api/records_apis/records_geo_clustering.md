# Records Geo Clustering API

This API provides powerfull geo clustering features over a set of selected records. It returns results under a format which can easily be used to build comprehensive data visualizations on a map, using a very large number of records.

This API takes as an input the cluster precision and a polygon representing the current view (on a map) and returns a list of clusters with the number of points contained in each cluster and the polygon of the cluster envelope (along with computed analytical series when required).

The clustering results are returned in JSON.

**API endpoint**: `/api/records/1.0/geocluster`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>datasetid</td><td>Identifier of the dataset. This field is mandatory.</td></tr>
<tr><td>q</td><td>The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.</td></tr>
<tr><td>geofilter.distance</td><td>Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): <code>latitude,longitude,distance</code>. Example: <code>geofilter.distance=48.8520930694,2.34738897685,1000</code></td></tr>
<tr><td>geofilter.polygon</td><td>Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84): <code>(lat1,lon1),(lat2,lon2),(lat3,lon3)</code>. Example: <code>geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)</code></td></tr>
<tr><td>refine.&lt;FACET&gt;</td><td>Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: <code>refine.city=Paris</code>, <code>refine.city=Paris&refine.year=2013</code></td></tr>
<tr><td>exclude.&lt;FACET&gt;</td><td>Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: <code>exclude.city=Paris</code>, <code>exclude.city=Paris&exclude.year=2013</code></td></tr>
<tr><td>format</td><td>Format of the response output. One of JSON (default), CSV and GeoJSONP.</td></tr>
<tr><td>callback</td><td>JSONP callback. Example: <code>format=jsonp&callback=myFunction</code></td></tr>
<tr><td>clusterprecision</td><td>The desired precision level, depending on the current map zoom level (if used through Leaflet, the Leaflet zoom level can be used). This parameter is mandatory.</td></tr>
<tr><td>shapeprecision</td><td>Defines the precision of the returned cluster envelope. The sum of clusterprecision and shapeprecision may not exceed 29.</td></tr>
<tr><td>clustermode	| Defines the desired clustering mode. Supported values are <code>polygon</code> (default) and <code>heatmap</code>.</td></tr>
<tr><td>y.&lt;SERIE&gt;.fun and y.&lt;SERIE&gt;.expr</td><td>This API may also accept a serie definition as described in the records analysis API. If a serie is defined, the aggregation will be performed using the values of the serie. For example: <code>clusterprecision=6&y.serie1.expr=height&y.series1.func=SUM</code></td></tr>
</table>
