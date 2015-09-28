# Records Download API

This API provides a performant way to download a large set of records out of one or serveral datasets at once. The HTTP answer is streamed which makes it possible to optimize the memory consumption client side.

**API endpoint**: `/api/records/1.0/download`

**Query**

Parameter Name | Description
-------------- | -----------
datasetid | Identifier of the dataset. Datasets that are hosted in the same domain may be queried simultaneously. Simply repeat the dataset parameter for each dataset you need to query. This field is mandatory.
q | The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.
geofilter.distance | Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): `latitude,longitude,distance`. Example: `geofilter.distance=48.8520930694,2.34738897685,1000`
geofilter.polygon | Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84): `(lat1,lon1),(lat2,lon2),(lat3,lon3)`. Example: `geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)`
facet | Activates faceting on the specified field (see Appendices for the available list of facets on Datasets). This parameter can be used multiple times to simultaneously activate several facets. By default, faceting is disabled. Example: `facet=city`
refine.&lt;FACET&gt; | Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: `refine.city=Paris`, `refine.city=Paris&refine.year=2013`
exclude.&lt;FACET&gt;	| Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: `exclude.city=Paris`, `exclude.city=Paris&exclude.year=2013`
pretty_print | If set to true (default is false), pretty prints JSON and JSONP outputs.
format | Format of the response output. One of CSV, JSON (default), JSONP, GeoJSON and GeoJSONP.
callback | JSONP or GeoJSONP callback. Example: `format=jsonp&callback=myFunction`

