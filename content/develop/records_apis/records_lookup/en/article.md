### Record Lookup API

This API makes it possible to fetch an individual record using its identifier (Record ID).

**API endpoint**: `/api/datasets/1.0/<DATASETID>/records/<RECORDID>`

**Query**

Parameter Name  | Description
--------------  | -----------
datasetid       | Part of the URL path. Identifier of the dataset. Example: `http://opendata.paris.fr/api/dataset/1.0/arbresremarquablesparis2011/`
recordid        | Part of the URL path. Identifier of the record. Example: `http://opendata.paris.fr/api/dataset/1.0/<DATASETID>/records/758885b5183fd28f14ecf39e44484fdccf/`
pretty_print    | If set to true (default is false), pretty prints JSON and JSONP outputs.
format          | Format of the response output. One of JSON (default) and JSONP.
callback        | JSONP callback. Example: `format=jsonp&callback=myFunction`
