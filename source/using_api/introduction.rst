Introduction
============

In this section we'll explore what the OpenDataSoft API does, why it has two versions and how to retrieve data from it.

.. important::
   Unsure about what an API is and what it can be used for? We published a short, illustrated guide to APIs that you
   probably should go through before reading this part of the documentation.

   Check out `The 10 critical insights to leverage the value of your data with APIs
   <http://hello.opendatasoft.com/free-api-guide-ten-critical-insights-to-leverage-the-value-of-your-data-with-apis/>`_

An *Application Programming Interface*, or API for short, is an interface designed to let programs exchange data.
OpenDataSoft's API provide an unified way of accessing any data that were pushed to the platform, regardless of their
source or format, while still enforcing security rules defined by the data owner.

The whole OpenDataSoft platform relies exclusively on these very APIs to access the data. They are heavily used by our
`widgets library <http://opendatasoft.github.io/ods-widgets/docs/#/api>`_ which are only a presentation layer for the
data provided by the APIs.

These APIs allow you to search for datasets, search for data, compute analysis, perform geographic aggregation and much
more.

Key concepts
------------

All APIs will provide you access to the same data, only in different ways. It is very important to be familiar with
the nature of this data before diving the full specification of each API.

Everything within the platform is related through a tree structure. Which means that you can think of OpenDataSoft as
such:

* The **OpenDataSoft platform** is a network of OpenDataSoft portals.
* A **portal** provides a **catalog** of all of its **datasets**.
* Each **dataset** is defined by a dictionary of **metadata**, a **data schema** (specifying fields names and types)
  and a collection of **records**.
* Each **record** provides values for each of the dataset's fields.

There are of course many more types of data within the platform, but they are only relevant in very specific contexts.

The OpenDataSoft platform provides its own API (ODS API v1 and v2) and some standard API's implementations such as ODATA
, WFS or CSW.

ODS API
-------

This API is the one used internally by the OpenDataSoft platform and widgets.
If you want to develop your own application, this is also the best way to go.

Differences between ODS APIv1 and APIv2
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This API is currently under development and will be officially available soon, but don't hesitate to give it a try :
:doc:`V2 </using_api/v2/index>`.

Here is the main differences and key changes between APIv1 and APIv2.

* APIv2 introduces a better implementation of REST principles. Each API entry-point provides links to easily navigate
  between linked resources (HATEOAS).
* This API proposes a more complete query language with new functions and arithmetic expressions.
* Special filters (geofilter or facet filters) are moved to the query language instead.
  For instance ``geofilter.distance='42,1,100'`` is replaced by ``q=distance(geo_field,geom'Point(42 1)',100)``
* Aggregation API (former analyze API) comes with a new ``SQL`` like language and is available on catalog in addition to
  dataset records.
* Exporters have their own entry-point under ``/api/catalog/exports`` and ``/api/catalog/datasets/<dataset_id>/exports``
* Navigation search (former facet search) and standard search are completely splitted.


Common aspects
^^^^^^^^^^^^^^

Both version of the API share one essential mechanism: the :doc:`authentification method </using_api/authentication>`
which enables you to use the same credentials for both versions.

What about ODATA, WFS and CSW?
------------------------------

These 3 acronyms refer to other standards that the platform implements. If you are not familiar with these standards,
then you should stick with the ODS API since it provides the most comprehensive access to the data.

ODATA
^^^^^

ODATA is a standard for REST APIs that provide a common language to be used across APIs to perform requests. The
trade-off for this norm's generic approach is its higher complexity compared to traditional custom REST APIs.

OpenDataSoft implements this norm for the simple operations (searching for datasets and records) but the more complex
ones (such as analysis, aggregations, geographic computations...) are only available through our V1 and V2 APIs.

WFS and CSW
^^^^^^^^^^^

These are both standards focusing on geographic data and as such are especially relevant if you're looking to interface
the platform with other GIS software.
