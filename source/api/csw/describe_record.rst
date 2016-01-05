DescribeRecord
==============
The ``DescribeRecord`` operation allows clients to discover elements of the information model supported by the
catalogue service.

Parameters
----------
This is the list of the supported parameters specific to the ``DescribeRecord`` operation. You should also take into
consideration the common parameters. `See more </api/csw/introduction.html#parameters>`_.

The existing parameters in the CSW standard which are not listed in this table are currently not supported.

.. list-table:: Supported parameters for the DescribeRecord operation
   :header-rows: 1

   * * Parameter
     * Description
     * Optionality and use
   * * ``TypeName``
     * Unordered list of zero or more type names that are to be described by the catalogue.
     * Optional. When omitted, return all types known.

Examples
--------
Here is an example of a ``DescribeRecord`` operation with the optional ``TypeName`` parameter, using a ``GET`` HTTP method :

.. code-block:: http

    GET http://public.opendatasoft.com/api/csw?service=CSW&request=DescribeRecord&typename=csw:Record

And the same request using a ``POST`` HTTP method :

.. code-block:: http

    POST http://public.opendatasoft.com/api/csw

The request body :

.. code-block:: xml

   <?xml version="1.0" ?>
   <DescribeRecord
      service="CSW"
      version="2.0.2"
      outputFormat="application/xml"
      schemaLanguage="http://www.w3.org/2001/XMLSchema"
      xmlns="http://www.opengis.net/cat/csw/2.0.2"
      xmlns:csw="http://www.opengis.net/cat/csw/2.0.2"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
      ../../../csw/2.0.2/CSW-discovery.xsd">
      <TypeName>csw:Record</TypeName>
   </DescribeRecord>
