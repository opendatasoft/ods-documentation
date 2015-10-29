# Dataset Lookup API

### Dataset Lookup API

This API makes it possible to fetch an individual dataset information.

**API endpoint**: `/api/datasets/1.0/<DATASETID>`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>datasetid</td><td>Part of the URL path. Identifier of the dataset. Example: <code>http://&lt;DOMAIN_ID&gt;/api/dataset/1.0/arbresremarquablesparis2011?...</code></td></tr>
<tr><td>pretty_print</td><td>If set to true (default is false), pretty prints JSON and JSONP outputs.</td></tr>
<tr><td>format</td><td>Format of the response output. One of JSON (default) and JSONP.</td></tr>
<tr><td>callback</td><td>JSONP callback. Example: <code>format=jsonp&callback=myFunction</code></td></tr>
</table>