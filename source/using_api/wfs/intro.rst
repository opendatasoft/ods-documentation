Using the service
=================

OpenDataSoft records can be accessed through a Web Feature Service (WFS), which provides an interface allowing
requests for geographical features. The OpenDataSoft platform uses the WFS specification version 1.1.0.

Operations supported
--------------------

OpenDataSoft platform implements three operations defined by the WFS standard :

.. list-table:: CSW Operations
   :header-rows: 1

   * * Operation
     * Description
   * * GetCapabilities
     * Retrieve service metadata.
   * * DescribeFeatureType
     * Generate a schema description of features types serviced by the service.
   * * GetFeature
     * Retrieve features from the service and output them using the GML representation.

Service address and methods
---------------------------
The service can be reached at the following entry address :

.. code-block:: text

    GET http://public.opendatasoft.com/api/wfs

For this documentation, we use the the domain ``http://public.opendatasoft.com`` as an example but you should replace it
by your custom domain name.

The WFS supports both ``GET`` and ``POST`` HTTP methods.

Request Headers
---------------
The only supported HTTP header is the optional ``Content-Type`` header, which must be set to ``text/xml`` when using a ``POST``
HTTP request.

Parameters
----------
When the HTTP ``GET`` method is used, the parameters are appended to the URL using a Keyword Value Pair (KVP)
encoding.
When the HTTP ``POST`` method is used, the operation request message are encoded as an XML document in the body
of the ``POST`` message.

Here is the list of the common parameters, supported by all WFS operations :

.. list-table:: Request Parameters
   :header-rows: 1

   * * Operation
     * Description
     * Possible values
     * Optionality and use
   * * ``service``
     * The requested service
     * ``WFS``
     * One (Mandatory)
   * * ``request``
     * The requested operation
     * ``GetCapabilities`` | ``DescribeFeatureType`` | ``GetFeature``
     * One (Mandatory)
   * * ``version``
     * The requested version of the service.
     * ``1.1.0``
     * One (Optional)

Exception reports
-----------------
When an error occurs, the service respond to the client using an Exception Report message to describe the error.

.. list-table:: Parameters in Exception element
   :header-rows: 1

   * * Name
     * Definition
     * Data type and value
     * Multiplicity and use
   * * ``ExceptionText``
     * Text describing specific exception represented by the exceptionCode
     * Character String type, not empty. Value is an exception description as defined by individual servers
     * Zero or more (optional). Omitted only when no more useful information available
   * * ``exceptionCode``
     * Code representing type of this exception
     * Character String type, not empty. Allowed values are specified by each implementation specification and server
       implementation
     * One (mandatory)
   * * ``locator``
     * Indicator of location in the client's operation request where this exception was encountered
     * Character String type, not empty Contents defined for each allowed exceptionCode value for each operation
     * Zero or one (optional). Omitted when no useful value available

Example :

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <ExceptionReport xmlns="http://www.opengis.net/ows" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://schemas.opengis.net/ows/1.1.0/owsExceptionReport.xsd" version="1.0.0" language="en">
      <Exception exceptionCode="InvalidParameterValue" locator="service">
        <ExceptionText>Service must be WFS or CSW.</ExceptionText>
      </Exception>
    </ExceptionReport>
