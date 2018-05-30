Transpose fields processor
==========================

This processor transforms labels into field values.

Example: if a dataset -containing the estimated number of inhabitants in France, the UK and the US, between 2020 and 2050-  initially looks like in the table below, it is quite difficult to analyze it and draw meaningful visualizations for instance.

.. list-table::
   :header-rows: 1

   * * Country name
     * 2020
     * 2030
     * 2050
   * * France
     * 70 000 000
     * 80 000 000
     * 100 000 000
   * * UK
     * 65 000 000
     * 70 000 000
     * 90 000 000
   * * USA
     * 350 000 000
     * 400 000 000
     * 450 000 000

However, with the representation below, it is possible to set up relevant facets and analyze the data, because these data are ordered a better way. The Transpose fields allows to go from the representation above to the one below, by creating a new field with the former field titles (Year), and another new field with the values left (Inhabitants).

.. list-table::
   :header-rows: 1

   * * Country Name
     * Year
     * Inhabitants
   * * France
     * 2020
     * 70 000 000
   * * UK
     * 2020
     * 65 000 000
   * * USA
     * 2020
     * 350 000 000
   * * France
     * 2030
     * 80 000 000
   * * UK
     * 2030
     * 70 000 000
   * * USA
     * 2030
     * 400 000 000
   * * France
     * 2050
     * 100 000 000
   * * UK
     * 2050
     * 90 000 000
   * * USA
     * 2050
     * 450 000 000


Setting the processor
---------------------

To set the parameters of the Transpose fields processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Fixed fields
    * List of fields that will be kept as is
    * yes
  * * Invert fixed fields
    * If checked: the fields chosen in the **Fixed fields** parameter will be transposed instead of being kept as they are, and the other fields will however be considered as fixed fields
    * no
  * * Label for title column
    * Name of the newly created field, containing the former fields titles
    * yes
  * * Label for value column
    * Name of the newly created field, containing the former records values
    * yes
  * * One line
    * If checked: records values will not be split in several lines for each possible value, but separated by a defined separator
    * no
  * * Separator
    * To fill if One line is set. Specifies the character to use to separate values in the new field
    * no
