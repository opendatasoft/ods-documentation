# Records Download API

This API provides a performant way to download a large set of records out of one or serveral datasets at once. The HTTP answer is streamed which makes it possible to optimize the memory consumption client side.

**API endpoint**: `/api/records/1.0/download`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>datasetid</td><td>Identifier of the dataset. Datasets that are hosted in the same domain may be queried simultaneously. Simply repeat the dataset parameter for each dataset you need to query. This field is mandatory.</td></tr>
<tr><td>q</td><td>The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.</td></tr>
<tr><td>geofilter.distance</td><td>Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): <code>latitude,longitude,distance</code>. Example: <code>geofilter.distance=48.8520930694,2.34738897685,1000</code></td></tr></td></tr>
<tr><td>geofilter.polygon</td><td>Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84): <code>(lat1,lon1),(lat2,lon2),(lat3,lon3)</code>. Example: <code>geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)</code></td></tr></td></tr>
<tr><td>facet</td><td>Activates faceting on the specified field (see Appendices for the available list of facets on Datasets). This parameter can be used multiple times to simultaneously activate several facets. By default, faceting is disabled. Example: <code>facet=city</code></td></tr></td></tr>
<tr><td>refine.&lt;FACET&gt;</td><td>Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: <code>refine.city=Paris</code>, <code>refine.city=Paris&refine.year=2013</code></td></tr></td></tr>
<tr><td>exclude.&lt;FACET&gt;</td><td>Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: <code>exclude.city=Paris</code>, <code>exclude.city=Paris&exclude.year=2013</code></td></tr>
<tr><td>pretty_print</td><td>If set to true (default is false), pretty prints JSON and JSONP outputs.</td></tr>
<tr><td>format</td><td>Format of the response output. One of CSV, JSON (default), JSONP, GeoJSON and GeoJSONP.</td></tr>
<tr><td>callback</td><td>JSONP or GeoJSONP callback. Example: <code>format=jsonp&callback=myFunction</code></td></tr>
</table>
