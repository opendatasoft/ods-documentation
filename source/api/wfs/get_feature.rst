GetFeature
==========
The ``GetFeature`` operation allows retrieval of features from the WFS, and output them using the GML 3.1.1
representation.

Parameters
----------
This is the list of the supported parameters specific to the ``GetFeature`` operation. You should also take into
consideration the common parameters. `See more </api/wfs/introduction.html#parameters>`_.

The existing parameters in the WFS standard which are not listed in this table are currently not supported.

.. list-table:: Supported parameters for the GetFeature operation
   :header-rows: 1

   * * Parameter
     * Description
     * Optionality and use
   * * ``resultType``
     * Used to indicate whether a WFS should generate a complete response document of whether it should generate an
       empty response document indicating only the number of features that the query would return.
     * Optional. Values can be ``hits`` or ``results``. Default value is ``results``.
   * * ``maxFeatures``
     * Used to define the maximum number of records that should be returned from the result set of a query.
     * Optional. Value must be a positive integer.
   * * ``TypeName``
     * A list of feature type names to query.
     * Mandatory.
   * * ``PropertyName``
     * A list of properties that should be returned.
     * Optional. The absence of a value also indicates that all properties should be fetched.
   * * ``featureId``
     * An enumerated list of feature instances to fetch identified by their feature identifiers.
     * Optional.

Examples
--------
Here is an example of a ``GetFeature`` operation with the optional ``PropertyName`` parameter, using a ``GET`` HTTP method :

.. code-block:: http

    GET http://public.opendatasoft.com/api/wfs?service=WFS&request=GetFeature&typename=ods:arrondissement_od&propertyname=ods:arrondissement_od/geo_shape

And the same request using a ``POST`` HTTP method :

.. code-block:: http

    POST http://public.opendatasoft.com/api/wfs

The request body :

.. code-block:: xml

   <?xml version="1.0" encoding="UTF-8"?>
   <wfs:GetFeature
      service="WFS"
      version="1.1.0"
      xmlns:wfs="http://www.opengis.net/wfs"
      xmlns:ogc="http://www.opengis.net/ogc"
      xmlns:myns="http://www.someserver.com/myns"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.opengis.net/wfs ../wfs/1.1.0/WFS.xsd">
      <wfs:Query typeName="ods:arrondissement_od">
         <wfs:PropertyName>geo_shape</wfs:PropertyName>
      </wfs:Query>
   </wfs:GetFeature>
