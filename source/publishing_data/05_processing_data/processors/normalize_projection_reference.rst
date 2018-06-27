Normalize Projection Reference processor
========================================

This processor handles a geopoint or a geoshape with a projection system different from a `WGS84 <http://en.wikipedia.org/wiki/WGS_84>`_ field. The field value containing a geopoint or geoshape other than a WGS84 representation is replaced with its WGS84 representation.

For example, if the EPSG code is set to ``27572``, the processor will consider that the original geo field contains coordinates expressed in `Lambert Zone II <http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/>`_.

.. admonition:: Note
   :class: note

   The input must be expressed with the same logic as a WGS84 geo coordinate: ``Y,X``.

Setting the processor
---------------------

To set the parameters of the Normalize Projection Reference processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field that will be normalized, containing a geopoint or a geoshape with another projection system than WGS84
    * yes
  * * Source epsg code
    * `EPSG <http://spatialreference.org/ref/epsg/>`_ code of the source coordinates system
    * yes
