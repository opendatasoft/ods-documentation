Extract bit range processor
===========================

.. admonition:: Important
   :class: important

   This processor is not available by default. Please contact OpenDataSoft support team if you want this processor to be activated in your domain.

This processor extracts an arbitrary bit range from an hexadecimal content and converts it into one of the following data types: integer, unsigned integer and float.

Example of use: when processing data coming from a network of sensors as sensors often encode their payloads as hexadecimal content.

Setting the processor
---------------------

To set the parameters of the Extract bit range processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Example
  * * Field
    * Field containing the hexadecimal content
    * yes
    * ``column_a``
  * * Start bit offset
    * Starting offset corresponding to the position of the first bit. It starts at 0.
    * yes
    * 0, 8, 16, ...
  * * Stop bit offset
    * Ending offset corresponding to the position of the last bit. Must be greater than the starting offset.
    * yes
    * 7, 15, 31, ...
  * * Convert to
    * Wanted format to output and convert the data
    * yes
    * Either int (integer), uint (unsigned integer) or float
  * * Output field
    * Field where the extracted bit range will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
    * ``result``


Example
-------

A temperature sensor sends an hexadecimal value.

  .. code-block:: text

    hexadecimal value : 0x1649

This hexadecimal value (2 bytes) contains:
- a decimal value encoded on the 1st byte
- the sensor identifier encoded on the first 4 bits of the 2nd byte
- a set of flags representing the sensor configuration, encoded on the remaining 4 bits

  .. code-block:: text

    hexadecimal value : 0x1649          <- information sent by the sensor in hexadecimal
    binary value : 00010110 01001001    <- same information in binary

- the first byte '00010110' is the temperature in degrees
- the next 4 bits '0100' is the sensor identifier
- the next 4 bits '1001' is the sensor configuration, but we only want the first bit

Therefore, the processing pipeline will contains 3 Extract bit range processors

* one Extract bit range from 0 to 7 to convert into signed integer (int) -> int_temperature
* one Extract bit range from 8 to 11 to convert into unsigned integer (uint) -> sensor_identifier
* one Extract bit range from 12 to 13 to convert into unsigned integer, 0 meaning "Not OK" and 1 meaning "OK" (uint) -> status

Extract bit range 1

  .. code-block:: text

    00010110 -> 22

Extract bit range 2

  .. code-block:: text

    0100 -> 4

Extract bit range 3

  .. code-block:: text

      1 -> OK

Final result:

  .. code-block:: text

    Temperature : 22 °C
    Identifier : 4
    Sensor : OK
