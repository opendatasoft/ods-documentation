Geo distance processor
======================

This processor computes the distance between 2 coordinates. The computed distance is in meters.

Setting the processor
---------------------

To set the parameters of the Geo distance processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Coordinates A
    * Field containing the one of the 2 required coordinates
    * yes
  * * Coordinates B
    * Field containing the second of the 2 required coordinates
    * yes
  * * Output field
    * Field that will contain the computed distance. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
