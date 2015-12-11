# Dataset Search API

### Dataset Search API

This API provides a search facility in the dataset catalog. Full text search as well as multi-criteria field queries are made possible and results facetting is provided as well.

**API endpoint**: `/api/datasets/1.0/search`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>q</td><td>The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.
<tr><td>facet</td><td>Activates faceting on the specified field (see Appendices for the available list of facets on Datasets). This parameter can be used multiple times to simultaneously activate several facets. By default, faceting is disabled. Example: <code>facet=modified</code></td></tr>
<tr><td>refine.&lt;FACET&gt;</td><td>Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: <code>refine.modified=2012/02</code>, <code>refine.modified=2012/02&refine.publisher=Paris</code></td></tr>
<tr><td>exclude.&lt;FACET&gt;</td><td>Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: <code>exclude.modified=2012/02</code>, <code>exclude.modified=2012/02&exclude.publisher=Paris</code></td></tr>
<tr><td>sort</td><td>Sorts results according to the specified field (the sortable fields for the dataset search API are: <code>modified</code>, <code>issued</code>, <code>created</code> and <code>records_count</code>). By default, the sort is descending (from the highest value to the smallest value). A minus sign ('-') may be used to perform an ascending sort. Examples: <code>sort=issued</code>, <code>sort=-issued</code></td></tr>
<tr><td>rows</td><td>Number of results to return in a single call. The maximum number of rows returned is 1000. By default, 10 results are returned.</td></tr>
<tr><td>start</td><td>Index of the first result to return (starting at 0). To be used in conjunction with "rows" to implement paging.</td></tr>
<tr><td>pretty_print</td><td>If set to true (default is false), pretty prints JSON and JSONP outputs.</td></tr>
<tr><td>format</td><td>Format of the response output. One of JSON (default), JSONP, CSV and RSS.</td></tr>
<tr><td>callback</td><td>JSONP callback. Example: <code>format=jsonp&callback=myFunction</code></td></tr>
</table>