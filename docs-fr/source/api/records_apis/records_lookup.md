# Records Lookup API

### Record Lookup API

This API makes it possible to fetch an individual record using its identifier (Record ID).

**API endpoint**: `/api/datasets/1.0/<DATASETID>/records/<RECORDID>`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>datasetid</td><td>Part of the URL path. Identifier of the dataset. Example: <code>http://opendata.paris.fr/api/dataset/1.0/arbresremarquablesparis2011/</code></td></tr>
<tr><td>recordid</td><td>Part of the URL path. Identifier of the record. Example: <code>http://opendata.paris.fr/api/dataset/1.0/&lt;DATASETID&gt;/records/758885b5183fd28f14ecf39e44484fdccf/</code></td></tr>
<tr><td>pretty_print</td><td>If set to true (default is false), pretty prints JSON and JSONP outputs.</td></tr>
<tr><td>format</td><td>Format of the response output. One of JSON (default) and JSONP.</td></tr>
<tr><td>callback</td><td>JSONP callback. Example: <code>format=jsonp&callback=myFunction</code></td></tr>
</table>
