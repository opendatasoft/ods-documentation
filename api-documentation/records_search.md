## Record Search API

This API makes it possible to perform complex queries on the records of a dataset, such as full-text search or geo search. It also provides faceted search features on dataset records.

**API endpoint**: `/api/records/1.0/search`

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
sort | Sorts results according to the specified field. By default, the sort is descending (from the highest value to the smallest value). A minus sign ('-') may be used to perform an ascending sort. Sorting is only available on numeric fields (int, double, date and datetime) and on text fields which have the `sortable`annotation. Examples: `sort=price`, `sort=-width`
rows | Number of results to return in a single call. The maximum number of rows returned is 1000. By default, 10 results are returned.
start| Index of the first result to return (starting at 0). To be used in conjunction with "rows" to implement paging.
pretty_print | If set to true (default is false), pretty prints JSON and JSONP outputs.
format | Format of the response output. One of JSON (default), JSONP, GeoJSON and GeoJSONP.
callback | JSONP or GeoJSONP callback. Example: `format=jsonp&callback=myFunction`

