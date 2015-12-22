Using the service
=================

OpenDataSoft datasets can be accessed through a Catalog Service for the Web. This is a standard for exposing a
catalogue of geospatial records in XML.

Operations supported
--------------------

OpenDataSoft platform implements four operations defined by the CSW standard :

.. list-table:: CSW Operations
   :header-rows: 1

   * * Operation
     * Description
   * * GetCapabilities
     * Retrieve service metadata.
   * * DescribeRecord
     * Discover elements of the information model by the catalogue.
   * * GetRecords
     * Search for records and get their metadata and identifier.
   * * GetRecordById
     * Search for a record with a specific identifier

Service address and methods
---------------------------
The service can be reached at the following entry address :

.. code-block:: http

    GET [/api/csw](http://public.opendatasoft.com/api/csw)

The CSW supports both `GET` and `POST` HTTP methods.

Request Headers
---------------
The only supported HTTP header is the ``Content-Type`` header, which must be set to ``text/xml`` when using a POST HTTP
request.

Parameters
----------
KVP when Get, XML when POST

Exception reports
-----------------
In Progress