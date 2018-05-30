Geomasking processor
====================

This processor provides privacy protection by approximating a geographical location within a specific radius.

Setting the processor
---------------------

To set the parameters of the Geomasking processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Default value
  * * Field
    * Field containing the coordinates to approximate
    * yes
    *
  * * Minimum distance (in meters)
    * Minimum level for the displacement of the geopoint
    * no
    * 1000
  * * Maximum distance (in meters)
    * Maximum level for the displacement of the geopoint
    * no
    * 3000
