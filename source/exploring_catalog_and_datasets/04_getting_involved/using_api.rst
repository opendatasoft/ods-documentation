Using the API
=============

An API (Application Programming Interface) is an interface for programs to communicate and exchange data.

.. admonition:: Note
   :class: note

   To know more about what APIs are and why and how they are used, you can read the article "`You don’t need analogies to understand APIs <https://kitchen.opendatasoft.com/you-dont-need-analogies-to-understand-apis-14da4513f970>`_" written by one of our OpenDataSoft developers.

OpenDataSoft provides access to 6 APIs, that can be put into 3 categories:

- `ODS Search API v1 <https://docs.opendatasoft.com/api/explore/v1.html>`_ and `ODS Search API v2 <https://docs.opendatasoft.com/api/explore/v2.html>`_: OpenDataSoft's own APIs, used internally by the platform and the `ODS widgets <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_
- `Triple Pattern Fragments API <https://docs.opendatasoft.com/api/explore/tpf.html>`_: ODS API for triple pattern querying over datasets from OpenDataSoft portals
- `OData <https://docs.opendatasoft.com/api/explore/odata.html>`_, `WFS <https://docs.opendatasoft.com/api/explore/wfs.html>`_ and `CSW <https://docs.opendatasoft.com/api/explore/csw.html>`_, 3 standard protocols supported and provided by OpenDataSoft

All these APIs provide access to any data pushed to the platform, no matter their source or format, as long as the security rules defined by the data owner allow that access.

These APIs can be used, for example, to search for datasets and data, to compute analysis or to perform geographic aggregations. Still developer-oriented, but for more concrete examples of what can be done with APIs: applications as data reuses. Some of OpenDataSoft customers have indeed seen their datasets being reused through their API, to create applications (i.e. `Qui dit miam ! <http://quiditmiam.fr/>`_ and `Y'A D Frites! <https://www.opendatasoft.fr/2016/10/17/y-a-d-frites-application-avec-de-lopen-data-dedans/>`_ 2 applications that display the school canteen menu of French cities, Toulouse, Rennes and Saint-Malo).


.. admonition:: Important
   :class: important

   Before using any of the available APIs, it is very important to be familiar with the nature of this data. Everything within the platform is built according to a tree structure (there are of course more types of data within the platform, but they are only relevant in very specific contexts). OpenDataSoft can thus be seen as such:

   * The OpenDataSoft platform is a network of OpenDataSoft portals.
   * A portal provides a catalog of all of its datasets.
   * Each dataset is defined by a dictionary of metadata, a data schema (specifying fields names and types) and a collection of records.
   * Each record provides values for each of the dataset's fields.


ODS Search
----------

This ODS Search API is used internally by the OpenDataSoft platform and widgets. To develop an application, we recommand using this API.

There are currently 2 versions of the ODS Search API: the `v1 <https://docs.opendatasoft.com/api/explore/v1.html>`_ and the `v2 <https://docs.opendatasoft.com/api/explore/v2.html>`_ which is still under development. Listed below, the main differences between the 2 versions.

* The ODS Search API v2 introduces a better implementation of REST principles. Each API entry-point provides links to easily navigate between linked resources (HATEOAS).
* Key changes in the v2:

  * a more complete query language (ODSQL) is available, with new functions and arithmetic expressions
  * special filters (such as geofilter and facet filters) are now directly integrated to ODSQL, in the ``where`` parameter (i.e ``geofilter.distance='42,1,100'`` is replaced by ``where=distance(geo_field,geom'Point(42 1)',100)``)
  * the aggregation API (former analyze API) now shares the same structure and ODSQL language as the Search API, and is available on both the catalog (to aggregate datasets) and the dataset (to aggregate records) APIs
  * exporters have their own entry-point under ``/api/catalog/exports`` and ``/api/catalog/datasets/<dataset_id>/exports``
  * navigation search (former facet search) and standard search are completely splitted


Triple Pattern Fragments
------------------------

The `Triple Pattern Fragments (TPF) API <https://docs.opendatasoft.com/api/explore/tpf.html>`_ enables dataset querying in Resource Description Framework (RDF) format. This work is still in progress and is part of a PhD that aims to improve OpenDataSoft datasets quality using semantic web technologies.


OData, WFS and CSW
------------------

OData, WFS and CSW refer to other standards implemented by the platform. We recommand to users who are not familiar with these 3 APIs to stick to the ODS Search API since it provides the most comprehensive access to the data.

* `OData <https://docs.opendatasoft.com/api/explore/odata.html>`_: standard for REST APIs that provides a common language to be used across APIs to perform requests. The trade-off for this norm's generic approach is its higher complexity compared to traditional custom REST APIs. OpenDataSoft has implemented this norm for the simple operations (searching for datasets and records) ; for the more complex ones (analysis, aggregations, geographic computations etc.) our ODS Search APIs (v1 and v2) must be used.
* `WFS <https://docs.opendatasoft.com/api/explore/wfs.html>`_ and `CSW <https://docs.opendatasoft.com/api/explore/csw.html>`_: standards focusing on geographic data. They are especially relevant for example to interface the platform with other GIS software.
