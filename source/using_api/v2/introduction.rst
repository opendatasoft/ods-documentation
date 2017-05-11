Introduction
============

.. important::

   This API is currently in BETA. Important changes can be made until the final release.
   Don't hesitate to report any problem you encounter when using it.


.. note::

   If you are already familiar with the structure of the data within the platform and are a seasoned developer or data
   scientist, you may want to dive right in and checkout the `API console <https://data.opendatasoft.com/api/v2/console>`_
   and/or the `API Swagger definition <https://data.opendatasoft.com/api/v2/swagger.json>`_.

   Both these links point to OpenDataSoft's central repository of open data but if you have a portal, you can access
   the same page at ``http://<youropendatasoftportal>/api/``.

In the following section, we'll assume that you know what HTTP verbs (``GET``, ``POST``, ``PUT``...) are and that you
are familiar with HTTP-related vocabulary such as *call*, *request*, *response* *body payload*, *query parameters* etc.
If you are not then please refer to the :doc:`glossary </platform_glossary>` whenever you find a term you do not understand.


OpenDataSoft's API V2 is a full-REST, HATEOAS-enabled, JSON-first API designed to provide access in a coherent,
hierarchical way to all the data available through the platform.

This means that:

- all API endpoints will return JSON data unless required otherwise,
- endpoints are organized in a hierarchical way describing the relative relationship between objects,
- all responses will contain a list of links allowing easy and relevant navigation through the API endpoints.

**Example 1:**

Request:

``GET /api/v2/catalog/datasets``

Response:

A collection of datasets (below, the ``...`` stand for ellipsis).

.. code-block:: javascript
   :linenos:

   {
       "total_count": 3928,
       "links": [
           {
              "href": "https://data.opendatasoft.com/api/v2/catalog/datasets?start=0&rows=10",
              "rel": "self"
           },
           {
               "href": "https://data.opendatasoft.com/api/v2/catalog/datasets?start=10&rows=10",
               "rel": "next"
           },
           ...
       ],
       "datasets": [
           {
               "links": [
                  {
                     "href": "https://data.opendatasoft.com/api/v2/catalog/datasets/las-vegas-crime-data@codeforvegas",
                     "rel": "self"
                  },
                  ...
               ],
               "dataset": {
                  "fields": [...],
                  "dataset_id": "las-vegas-crime-data@codeforvegas",
                  "has_records": true,
                  "attachments": [...],
                  "metas": {...},
                  "features": [...]
               }
           },
           ...
       ]
   }

**Example 2:**

Request:

``GET /api/v2/catalog/datasets/las-vegas-crime-data@codeforvegas`` (the link provided as "self" in the first
dataset returned in the collection of the previous call)

Response:

.. code-block:: javascript
   :linenos:

   {
       "links": [
           {
               "href": "https://data.opendatasoft.com/api/v2/catalog/datasets/las-vegas-crime-data@codeforvegas/records",
               "rel": "records"
           },
       ],
       "dataset": {
           "fields": [
               {
                   "name": "loc",
                   "label": "loc",
                   "type": "geo_shape",
                   "annotations": [...],
                   "description": null
               },
               ...
           ],
           "dataset_id": "las-vegas-crime-data@codeforvegas",
           "has_records": true,
           "attachments": [],
           "metas": {},
           "features": [
               "analyze",
               "geo"
           ]
       }
   }
