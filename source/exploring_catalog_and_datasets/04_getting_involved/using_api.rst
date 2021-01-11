Using the API
=============

An API (Application Programming Interface) is an interface for programs to communicate and exchange data.

.. admonition:: Note
   :class: note

   To know more about what APIs are and why and how they are used, you can read the article "`You don\'t need analogies to understand APIs <https://kitchen.opendatasoft.com/you-dont-need-analogies-to-understand-apis-14da4513f970>`_" written by one of our Opendatasoft developers.

Opendatasoft provides access to 6 APIs:

- `ODS Search API v1 <https://help.opendatasoft.com/apis/ods-search-v1/>`_ and `ODS Search API v2 <https://help.opendatasoft.com/apis/ods-search-v2/>`_: Opendatasoft's own APIs, used internally by the platform and the `ODS widgets <https://help.opendatasoft.com/widgets/>`_
- `Triple Pattern Fragments API <https://help.opendatasoft.com/apis/tpf/>`_: ODS API for triple pattern querying over datasets from Opendatasoft portals
- `OData <https://help.opendatasoft.com/apis/odata/>`_, `WFS <https://help.opendatasoft.com/apis/wfs/>`_, and `CSW <https://help.opendatasoft.com/apis/csw/>`_: 3 standard protocols supported and provided by Opendatasoft

All these APIs provide access to any data pushed to the platform, no matter their source or format, as long as the security rules defined by the data owner allow that access.

These APIs can be used, for example, to search for datasets and data, to compute analysis, or to perform geographic aggregations. Still developer-oriented, but for more concrete examples of what can be done with APIs: applications as data reuses. Some of Opendatasoft customers have indeed seen their datasets being reused through their API to create applications. For example, "`Qui dit miam ! <https://quiditmiam.fr/>`_" and "Y'A D Frites!" are 2 applications that display the school canteen menu of French cities, Toulouse, Rennes, and Saint-Malo.


.. admonition:: Important
   :class: important

   Before using any of the available APIs, it is very important to be familiar with the nature of this data. Everything within the platform is built according to a tree structure (there are more types of data within the platform, but they are only relevant in very specific contexts). Opendatasoft can thus be seen as such:

   * The Opendatasoft platform is a network of Opendatasoft portals.
   * A portal provides a catalog of all of its datasets.
   * Each dataset is defined by a dictionary of metadata, a data schema (specifying fields names and types), and a collection of records.
   * Each record provides values for each of the dataset's fields.


ODS Search
----------

This ODS Search API is used internally by the Opendatasoft platform and widgets. To develop an application, we recommend using this API.

There are currently 2 versions of the ODS Search API: the `v1 <https://help.opendatasoft.com/apis/ods-search-v1/>`_ and the `v2 <https://help.opendatasoft.com/apis/ods-search-v2/>`_, which is still under development. Listed below, the main differences between the 2 versions.

* The ODS Search API v2 introduces a better implementation of REST principles. Each API entry-point provides links to navigate between linked resources (HATEOAS) easily.
* Key changes in the v2:

  * A richer query language (ODSQL) is available, with new functions and arithmetic expressions.
  * Special filters (such as geofilter and facet filters) are now directly integrated to ODSQL, in the ``where`` parameter (i.e ``geofilter.distance='42,1,100'`` is replaced by ``where=distance(geo_field,geom'Point(42 1)',100)``).
  * The aggregation API (former analyze API) now shares the same structure and ODSQL language as the Search API. It is available on both the catalog (to aggregate datasets) and the dataset (to aggregate records) APIs.
  * Exporters have their own entry-point under ``/api/catalog/exports`` and ``/api/catalog/datasets/<dataset_id>/exports``.
  * Navigation search (former facet search) and standard search are completely separated.


Triple Pattern Fragments
------------------------

The `Triple Pattern Fragments (TPF) API <https://help.opendatasoft.com/apis/tpf/>`_ enables dataset querying in Resource Description Framework (RDF) format. This work is still in progress and is part of a Ph.D. that aims to improve Opendatasoft datasets quality using semantic web technologies.


OData, WFS, and CSW
-------------------

OData, WFS, and CSW refer to other standards implemented by the platform. We recommend to users who are not familiar with these 3 APIs to stick to the ODS Search API since it provides the most comprehensive access to the data.

* `OData <https://help.opendatasoft.com/apis/odata/>`_ is a standard for REST APIs that provides a common language to be used across APIs to perform requests. The trade-off for this norm's generic approach is its higher complexity compared to traditional custom REST APIs. Opendatasoft has implemented this norm for the simple operations (searching for datasets and records); for the more complex ones (analysis, aggregations, geographic computations, etc.), use our Search APIs (v1 and v2).
* `WFS <https://help.opendatasoft.com/apis/wfs/>`_ and `CSW <https://help.opendatasoft.com/apis/csw/>`_ are standards focusing on geographic data. They are especially relevant, for example, to interface the platform with other GIS software.
