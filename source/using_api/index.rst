Using the API
=============

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

.. toctree::
   :maxdepth: 2

   authentication
   query_language
   v1/index
   v2/index
   odata
