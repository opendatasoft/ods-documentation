GetCapabilities
===============
The ``GetCapabilities`` operation allows clients to retrieve service metadata. The response is a XML document
containing the information.

Parameters
----------
This is the list of the supported parameters specific to the ``GetCapabilities`` operation. You should also take into
consideration the common parameters. `See more <intro.html#parameters>`_.

The existing parameters in the CSW standard which are not listed in this table are currently not supported.

.. list-table:: Supported parameters for the GetCapabilities operation
   :header-rows: 1

   * * Parameter
     * Description
     * Optionality and use
   * * ``Sections``
     * Unordered list of zero or more names of sections of service metadata document to be returned in service metadata
       document.
     * Optional. When omitted, return complete service metadata document.
   * * ``AcceptVersions``
     * Prioritized sequence of one or more specification versions accepted by client, with preferred versions listed
       first.
     * Optional. When omitted, return latest supported version.

Sections
--------
This is the list of the existing section in the service metadata. The section name can be used as a value for the
``Sections`` parameter.

.. list-table:: Section name and contents
   :header-rows: 1

   * * Section name
     * Contents
   * * ``ServiceIdentification``
     * Metadata about the the CSW implementation.
   * * ``ServiceProvider``
     * Metadata about the organization offering the CSW service.
   * * ``OperationsMetadata``
     * Metadata about the CSW operations offered by a the CSW implementation.
   * * ``Filter_Capabilities``
     * Metadata about the filter capabilities of the server. The OpenDataSoft CSW currently does not support filters.

Examples
--------
Here is an example of a ``GetCapabilities`` operation with the optional ``Sections`` parameter, using a ``GET`` HTTP method :

.. code-block:: http

    GET http://public.opendatasoft.com/api/csw?service=CSW&request=GetCapabilities&sections=ServiceIdentification,ServiceProvider

And the same request using a ``POST`` HTTP method :

.. code-block:: http

    POST http://public.opendatasoft.com/api/csw

The request body :

.. code-block:: xml

   <?xml version="1.0"?>
   <GetCapabilities
      xmlns="http://www.opengis.net/cat/csw/2.0.2"
      xmlns:ows="http://www.opengis.net/ows"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
      ../../../csw/2.0.2/CSW-discovery.xsd"
      service="CSW">
      <ows:Sections>
         <ows:Section>ServiceIdentification</ows:Section>
         <ows:Section>ServiceProvider</ows:Section>
      </ows:Sections>
   </GetCapabilities>
