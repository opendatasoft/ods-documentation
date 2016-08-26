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

V1 or V2?
---------

IF you're new to the OpenDataSoft platform, then the V2 is the way to go. It is a more rational API build upon our
experience with the V1, easier to use and navigate.

There is only one good reason to be using the V1: if you are maintaining an application relying on it. If you aren't
then you should ignore it and go for the :doc:`V2 </using_api/v2>`.

Common aspects
--------------

Both version of the API share two essentials mechanism: the :doc:`authentification method </using_api/authentication>`
and the :doc:`query language </using_api/query_language>`. The first one enables you to use the same credentials for
both versions while the second one spares you from having to learn a new query language for each version.

What about ODATA?
-----------------

ODATA is a standard for REST APIs that provide a common language to be used across APIs to perform requests. The
trade-off for this norm's generic approach is its higher complexity compared to traditional custom REST APIs.

OpenDataSoft implements this norm for the simple operations (searching for datasets and records) but the more complex
ones (such as analysis, aggregations, geographic computations...) are only available through our V1 and V2 APIs.
