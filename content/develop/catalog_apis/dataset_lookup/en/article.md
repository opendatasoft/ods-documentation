### Dataset Lookup API

This API makes it possible to fetch an individual dataset information.

**API endpoint**: `/api/datasets/1.0/<DATASETID>`

**Query**

Parameter Name | Description
-------------- | -----------
datasetid | Part of the URL path. Identifier of the dataset. Example: `http://<DOMAIN_ID>/api/dataset/1.0/arbresremarquablesparis2011?...`
pretty_print | If set to true (default is false), pretty prints JSON and JSONP outputs.
format | Format of the response output. One of JSON (default) and JSONP.
callback | JSONP callback. Example: `format=jsonp&callback=myFunction`
