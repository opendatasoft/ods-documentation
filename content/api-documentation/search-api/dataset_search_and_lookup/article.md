### Dataset Search API

This API provides a search facility in the dataset catalog. Full text search as well as multi-criteria field queries are made possible and results facetting is provided as well.

**API endpoint**: `/api/datasets/1.0/search`

**Query**

Parameter Name | Description
-------------- | -----------
q | The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.
facet | Activates faceting on the specified field (see Appendices for the available list of facets on Datasets). This parameter can be used multiple times to simultaneously activate several facets. By default, faceting is disabled. Example: `facet=modified`
refine.&lt;FACET&gt; | Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: `refine.modified=2012/02`, `refine.modified=2012/02&refine.publisher=Paris`
exclude.&lt;FACET&gt;	| Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: `exclude.modified=2012/02`, `exclude.modified=2012/02&exclude.publisher=Paris`
sort | Sorts results according to the specified field (the sortable fields for the dataset search API are: **modified**, **issued**, **created** and **records_count**). By default, the sort is descending (from the highest value to the smallest value). A minus sign ('-') may be used to perform an ascending sort. Examples: `sort=issued`, `sort=-issued`
rows | Number of results to return in a single call. The maximum number of rows returned is 1000. By default, 10 results are returned.
start| Index of the first result to return (starting at 0). To be used in conjunction with "rows" to implement paging.
pretty_print | If set to true (default is false), pretty prints JSON and JSONP outputs.
format | Format of the response output. One of JSON (default), JSONP, CSV and RSS.
callback | JSONP callback. Example: `format=jsonp&callback=myFunction`

### Dataset Lookup API

This API makes it possible to fetch an individual dataset information.

**API endpoint**: `/api/datasets/1.0/<DATASETID>`

**Query**

Parameter Name | Description
-------------- | -----------
datasetid | Part o the URL path. Identifier of the dataset. Example: `http://<DOMAIN_ID>/api/dataset/1.0/arbresremarquablesparis2011?...`
pretty_print | If set to true (default is false), pretty prints JSON and JSONP outputs.
format | Format of the response output. One of JSON (default) and JSONP.
callback | JSONP callback. Example: `format=jsonp&callback=myFunction`
