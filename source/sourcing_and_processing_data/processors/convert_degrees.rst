Convert Degrees processor
=========================

This processor converts a degrees, minutes, seconds geo coordinate to a standard geo coordinate in a "latitude, longitude" format.

The following formats can be converted:

- 48° 51′ 24″ Nord2° 21′ 07″ Est
- 48° 51′ 24″N 2° 21′ 07″ E
- 48° 51′ 24″ 2° 21′ 07″
- +48° 51′ 24″ +2° 21′ 07″
- N48° 51′ 24″ E2° 21′ 07″
- 48°;2°

The signs can be:

.. list-table::
   :header-rows: 1

   * * Type
     * Signs
   * * North/South
     * +, -, N, S, Nord, North, Sud, South
   * * East/West
     * +, -, E, O, W, Est, East, Ouest, West
   * * Coordinate separator
     * ' ', ';', '/'
   * * Degree mark
     * '°', '^', '*'
   * * Minute mark
     * "'", '′'
   * * Second mark
     * '"', '″'

Setting the processor
---------------------

To set the parameters of the Convert Degrees processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Coordinates
    * Field that contains the coordinates
    * yes
  * * Output field
    * Field that will contain the contain the WGS84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
