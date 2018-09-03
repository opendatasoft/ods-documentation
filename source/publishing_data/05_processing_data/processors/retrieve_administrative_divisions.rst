Retrieve Administrative Divisions processor
===========================================

This processor uses a geo point to retrieve information (name, code and geo shapes) of administrative divisions.

The Retrieve Administrative Divisions processor is available for the following countries:

- Canada
- England
- France
- Germany
- Mexico
- the Netherlands
- Scotland
- Spain
- Switzerland
- the USA
- Wales

Setting the processor
---------------------

To set the parameters of the Retrieve Administrative Divisions processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Geo Point
    * Field which contains the geo point the processor will use to retrieve the administrative divisions
    * yes
  * * Administrative Level
    * Choose an administrative level, between 1 (largest scale) and 7 (smallest scale). See the **Referentials** section to know which administrative levels are available depending on the country where the geo point is ; and to know what the levels actually correspond to.
    * yes
  * * Output Division Name
    * Field where the name of the chosen administrative division will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
  * * Output Division Code
    * Field where the code of the chosen administrative division will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
  * * Output Division Geo Shape
    * Field where the geo shape of the chosen administrative division will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes

Referentials
------------

When using the Retrieve Administrative Divisions processor, an administrative level (between 1 and 7) must be chosen. The available administrative levels are referenced in the table below depending on the country where the geo point is.

.. list-table::
  :header-rows: 1

  * *
    * 1
    * 2
    * 3
    * 4
    * 5
    * 6
    * 7
  * * FR
    * Country
    * Nouvelles régions
    * Départements
    * Cantons
    * Codes Postaux
    * Communes INSEE
    * Contours IRIS
  * * CH
    * Country
    * Kantons
    *
    * Bezirks
    * Postleitzahlen
    * Hoheits
    *
  * * NL
    * Country
    *
    *
    *
    * Postcodes
    *
    *
  * * CA
    * Country
    * Provinces
    *
    * Census Divisions
    *
    * Census Subdivisions
    *
  * * DE
    * Country
    * Länder
    *
    *
    * Postleitzahlen
    *
    *
  * * US
    * Country
    * State Boundaries
    *
    * County Boundaries
    * ZCTA
    *
    *
  * * MX
    * Country
    * Estados
    *
    *
    *
    *
    *
  * * GB-SCT
    * Country
    *
    *
    *
    * Wards
    *
    *
  * * GB-WLS
    * Country
    *
    *
    * Counties and Unitary Authorities
    * Wards
    * Parishes
    *
  * * GB-ENG
    * Country
    * Regions
    *
    * Counties and Unitary Authorities
    * Wards
    * Parishes
    *
  * * ES
    * Country
    * Comunidades Autónomas
    * Provincias
    *
    *
    * Municipios
    *
