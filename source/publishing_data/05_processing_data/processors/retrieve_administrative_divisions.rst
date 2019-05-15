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
- United Kingdom

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
  * * Country
    * Choose the country where the geo points are located. If the geo points are not confined into a single country, use the 'World' country.
    * yes
  * * Administrative Level
    * Choose an administrative level of the chosen country. If you chose the 'World' country, it is a choice between 1 (largest scale) and 7 (smallest scale). See the **Referentials** section to know which administrative levels are available depending on the country where the geo point is ; and to know what the levels actually correspond to.
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

When a real country is chosen, the administrative levels corresponding to that country are explicitely written. However, when using the 'World' country, an administrative level between 1 and 7 must be chosen. Please refer to the table below to have an idea of what the administrative levels are for each country currently available in the processor. 

.. admonition:: Note
   :class: note
   
   When using the 'World' country, the processor will try to retrieve the divisions corresponding to the chosen level (between 1 and 7). The results can however be irrelevant in some cases since administrative divisions are not homogenized across countries (e.g. the french "cantons" will be at level 4 whereas swiss "kantons" will be at level 2).

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
  * * BE
    * Country
    * Régions Belges
    * Provinces Belges
    * Arrondissements Belges
    * Cantons Belges
    * Communes Belges
    * 
  * * CA
    * Country
    * Canada Provinces
    * 
    * Intercensal Canada
    * 
    * Canadian Census Subdivisions
    * 
  * * CH
    * Country
    * swissBOUNDARIES3D - TLM_KANTONSGEBIET
    * 
    * swissBOUNDARIES3D - TLM BEZIRKSGEBIET
    * Amtliches Ortschaftenverzeichnis mit Postleitzahl und Perimeter
    * swissBOUNDARIES3D - TLM HOHEITSGEBIET
    * 
  * * DE
    * Country
    * Deutschland Länder
    * 
    * Landkreise
    * Postleitzahlen Deutschland
    * Deutschland Stadt
    * 
  * * ES
    * Country
    * Comunidades Autónomas españolas
    * Provincias españolas
    * 
    * 
    * España - Municipios
    * 
  * * FR
    * Country
    * Contours géographiques des régions
    * Contours géographiques des départements
    * Cantons
    * Codes postaux croisés aux communes
    * Contours géographiques des communes
    * Contours Iris
  * * GBENG
    * Country
    * Regions in England
    * Counties and Unitary Authorities in England
    * 
    * Wards in England
    * Parishes in England
    * 
  * * GBSCT
    * Country
    * 
    * 
    * 
    * Wards in Scotland
    * 
    * 
  * * GBWLS
    * Country
    * 
    * Counties and Unitary Authorities in Wales
    * 
    * Wards in Wales
    * Parishes in Wales
    * 
  * * MX
    * Country
    * Estados de México
    * 
    * 
    * 
    * 
    * 
  * * NL
    * Country
    * 
    * 
    * 
    * Nederland Postcodes
    * 
    * 
  * * UK
    * Country
    * United Kingdom - Constituent Countries
    * Counties and Unitary Authorities
    * Local Authority Districts
    * Wards 
    * 
    * 
  * * US
    * Country
    * US State Boundaries
    * 
    * US County Boundaries
    * ZCTA
    * 
    * 
