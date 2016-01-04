GetRecordById
=============
The ``GetRecordById`` operation allows clients to retrieve the representation of catalogue records using their
identifier. The response is a XML document and the output schema can be specified.

Parameters
----------
This is the list of the supported parameters specific to the ``GetRecordById`` operation. You should also take into
consideration the common parameters. `See more </api/csw/introduction.html#parameters>`_.

The existing parameters in the CSW standard which are not listed in this table are currently not supported.

.. list-table:: Supported parameters for the GetRecordById operation
   :header-rows: 1

   * * Parameter
     * Description
     * Optionality and use
   * * ``outputSchema``
     * Used to indicate the schema of the output that is generated in response to a ``GetRecords`` request.
     * Optional. Values can be ``http://www.opengis.net/cat/csw/2.0.2`` or ``http://www.isotc211.org/2005/gmd``.
       Default value is ``http://www.opengis.net/cat/csw/2.0.2``.
   * * ``ElementSetName``
     * Used to indicate which named set the service shall present to the client. It usually defines the level of
       details present in the result set.
     * Optional. Values can be ``full``, ``summary`` or ``brief``. Default value is ``summary``.
   * * ``Id``
     * A list of record identifiers for the records that a CSW shall return to the client.
     * Mandatory. List of resource identifier.

Examples
--------
Here is an example of a ``GetRecordById`` operation with the optional ``outputSchema`` parameter, using a ``GET`` HTTP method :

.. code-block:: http

    GET http://public.opendatasoft.com/api/csw?service=CSW&request=GetRecordById&outputschema=http://www.isotc211.org/2005/gmd&id=arrondissement_od

And the same request using a ``POST`` HTTP method :

.. code-block:: http

    POST http://public.opendatasoft.com/api/csw

The request body :

.. code-block:: xml

   <?xml version="1.0" ?>
      <GetRecordById
         service="CSW"
         version="2.0.2"
         outputFormat="application/xml"
         outputSchema="http://www.isotc211.org/2005/gmd"
         xmlns="http://www.opengis.net/cat/csw/2.0.2"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
         ../../../csw/2.0.2/CSW-discovery.xsd">
         <Id>arrondissement_od</Id>
      </GetRecordById>
