GeoJoin processor
=================

This processor retrieves administrative divisions geo shapes for a specified country and referential (postcode, county code, etc.).

Each country has specific referentials, all referenced in the section below. The GeoJoin processors is available for the following countries:

- Belgium
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

It is also available for the world, which means that is is possible to retrieve the geo shape of any other country than those listed above. However, only the geo shape of the country will be retrieved, the processor will not be able to retrieve geo shapes from administrative divisions at a smaller scale.

Setting the processor
---------------------

To set the parameters of the GeoJoin processor, follow the indications from the table below, for the general parameters. Depending on the chosen country, see the referentials in the **Referentials** section.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Country
    * Country from which to retrieve administrative divisions geo shapes
    * yes
  * * Repository
    * Referential used by the processor to retrieve the geo shapes (see the **Referentials** section below to know which administrative divisions are available depending on the chosen country)
    * yes
  * * Local key
    * Field of the dataset which contains the matching administrative division referential to the chosen one in the Repository parameter
    * yes
  * * Output field
    * Field where the geo shapes will be displayed. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes

Referentials
------------

To set the **Repository**, follow the indications from the table of the chosen country.

.. admonition:: Note
   :class: note

   The referentials below can also be found in datasets available on `public.opendatasoft.com <https://public.opendatasoft.com>`_.

Belgium
~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * arrondissements2008
    * `Arrondissements Belges (2008) <https://public.opendatasoft.com/explore/dataset/arrondissements-belges>`_
  * * provinces2008
    * `Provinces Belges (2008) <https://public.opendatasoft.com/explore/dataset/provinces-belges>`_
  * * communes2008
    * `Communes Belges (2008) <https://public.opendatasoft.com/explore/dataset/communes-belges>`_
  * * regions2008
    * `Régions Belges (2008) <https://public.opendatasoft.com/explore/dataset/regions-belges>`_
  * * cantons2008
    * `Cantons Belges (2008) <https://public.opendatasoft.com/explore/dataset/cantons-belges>`_

Canada
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * provinces2003
    * `Canada Provinces (2003) <https://public.opendatasoft.com/explore/dataset/canada-provinces>`_
  * * counties2011
    * `Intercensal Canada (2011) <https://public.opendatasoft.com/explore/dataset/intercensal-canada>`_
  * * census-divisions2011
    * `Canadian Census Divisions (2011) <https://public.opendatasoft.com/explore/dataset/canadian-census-subdivisions>`_
  * * census-subdivisions2011
    * `Canadian Census Subdivisions (2011) <https://public.opendatasoft.com/explore/dataset/canadian-census-subdivisions0>`_

England (GB)
~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * regions2017
    * `Regions in England (2017) <https://public.opendatasoft.com/explore/dataset/regions-in-england-december-2017>`_
  * * wards2015
    * `Wards in England (2015) <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2015>`_
  * * regions2016
    * `Regions in England (2016) <https://public.opendatasoft.com/explore/dataset/regions-in-england-december-2016>`_
  * * wards2014
    * `Wards in England (2014) <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2014>`_
  * * parishes2016
    * `Parishes in England (2016) <https://public.opendatasoft.com/explore/dataset/parishes-in-england-december-2016>`_
  * * counties2016
    * `Counties and Unitary Authorities in England (2016) <https://public.opendatasoft.com/explore/dataset/counties-and-unitary-authorities-december-2016-generalised-clipped-boundaries-in>`_
  * * wards2016
    * `Wards in England (2016) <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2016>`_
  * * parishes2014
    * `Parishes in England (2014) <https://public.opendatasoft.com/explore/dataset/parishes-in-england-december-2014>`_

France
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * regions1970
    * `Contours des régions françaises sur OpenStreetMap (1970) <https://public.opendatasoft.com/explore/dataset/contours-des-regions-francaises-sur-openstreetmap>`_
  * * regions2016
    * `Contours géographiques des nouvelles régions (métropole) (2016) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-nouvelles-regions-metropole>`_
  * * iris2014
    * `Contours IRIS 2014 (2014) <https://public.opendatasoft.com/explore/dataset/contours-iris-2014>`_
  * * epci2018
    * `Contours géographiques des EPCI (2018) <https://public.opendatasoft.com/explore/dataset/admin-express-epci-2018>`_
  * * epci2016
    * `Contours géographiques des EPCI (2016) <https://public.opendatasoft.com/explore/dataset/contours-des-etablissements-publics-de-cooperation-intercommunale-epci-2016>`_
  * * iris2017
    * `Contours Iris (2017) <https://public.opendatasoft.com/explore/dataset/contours-iris>`_
  * * departements-simplifies2015
    * `Contours simplifiés des départements Français 2015 (2015) <https://public.opendatasoft.com/explore/dataset/contours-simplifies-des-departements-francais-2015>`_
  * * cantons2015
    * `Cantons (2015) <https://public.opendatasoft.com/explore/dataset/decoupage-des-cantons-pour-les-elections-departementales-de-mars-2015>`_
  * * departements2019
    * `Contours géographiques des départements (2019) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-departements-2019>`_
  * * regions-simplifiees2016
    * `Contours géographiques simplifiés des nouvelles régions (métropole) (2016) <https://public.opendatasoft.com/explore/dataset/france-regions-2016-contours-simplifies>`_
  * * iris2015
    * `Contours IRIS 2015 (2015) <https://public.opendatasoft.com/explore/dataset/contours-iris-2015>`_
  * * communes2015
    * `Geofla® - Communes 2015 (2015) <https://public.opendatasoft.com/explore/dataset/geoflar-communes-2015>`_
  * * communes2018
    * `Contours géographiques des communes (2018) <https://public.opendatasoft.com/explore/dataset/admin-express-communes-2018>`_
  * * epci2017
    * `Contours géographiques des EPCI (2017) <https://public.opendatasoft.com/explore/dataset/admin-express-epci-2017>`_
  * * epci2019
    * `Contours géographiques des EPCI (2019) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-epci-2019>`_
  * * departements2015
    * `Geofla® - Départements 2015 (2015) <https://public.opendatasoft.com/explore/dataset/geoflar-departements-2015>`_
  * * communes2013
    * `Geofla® - Communes 2013 (2013) <https://public.opendatasoft.com/explore/dataset/geoflar-communes>`_
  * * communes2017
    * `Contours géographiques des communes (2017) <https://public.opendatasoft.com/explore/dataset/admin-express-communes-2017>`_
  * * iris-epci2016
    * `Contours IRIS 2016 avec EPCI (2016) <https://public.opendatasoft.com/explore/dataset/contours-iris-2016-epci>`_
  * * iris2016
    * `Contours IRIS 2016 (2016) <https://public.opendatasoft.com/explore/dataset/contours-iris-2016>`_
  * * communes2016
    * `Geofla® Commune 2016 (2016) <https://public.opendatasoft.com/explore/dataset/geoflar-communes-2016>`_
  * * regions2019
    * `Contours géographiques des régions (2019) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-regions-2019>`_
  * * communes2019
    * `Contours géographiques des communes (2019) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-communes-2019>`_
  * * postcodes2013
    * `Carte des Codes Postaux (2013) <https://public.opendatasoft.com/explore/dataset/contour-des-codes-postaux>`_

Germany
~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * stadten2017
    * `Deutschland Stadt (2017) <https://public.opendatasoft.com/explore/dataset/deutschland-stadte-und-gemeinden>`_
  * * landern2016
    * `Deutschland Länder (2016) <https://public.opendatasoft.com/explore/dataset/deutschland-lander>`_
  * * postleitzahlen2016
    * `Postleitzahlen Deutschland (2016) <https://public.opendatasoft.com/explore/dataset/postleitzahlen-deutschland>`_
  * * landkreise2017
    * `Landkreise (2017) <https://public.opendatasoft.com/explore/dataset/landkreise-in-germany>`_

Mexico
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * estados2017
    * `Estados de México (2017) <https://public.opendatasoft.com/explore/dataset/estados-de-mexico>`_

Netherlands
~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * postcodes2015
    * `Nederland Postcodes (2015) <https://public.opendatasoft.com/explore/dataset/openpostcodevlakkenpc4>`_


Scotland (GB)
~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * wards2014
    * `Wards in Scotland (2014) <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2014>`_
  * * wards2015
    * `Wards in Scotland (2015) <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2015>`_
  * * wards2016
    * `Wards in Scotland (2016) <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2016>`_

Spain
~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * provincias2012
    * `Provincias españolas (2012) <https://public.opendatasoft.com/explore/dataset/provincias-espanolas>`_
  * * comunidades-autonomas2012
    * `Comunidades Autónomas españolas (2012) <https://public.opendatasoft.com/explore/dataset/comunidades-autonomas-espanolas>`_

Switzerland
~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * gemeinde2018
    * `swissBOUNDARIES3D - TLM HOHEITSGEBIET (2018) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm-hoheitsgebiet-2018>`_
  * * bezirke2018
    * `swissBOUNDARIES3D - TLM BEZIRKSGEBIET (2018) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm-bezirksgebiet-2018>`_
  * * kantone2017
    * `swissBOUNDARIES3D - TLM_KANTONSGEBIET (2017) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_kantonsgebiet>`_
  * * gemeinde2017
    * `swissBOUNDARIES3D - TLM HOHEITSGEBIET (2017) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_hoheitsgebiet>`_
  * * bezirke2017
    * `swissBOUNDARIES3D - TLM BEZIRKSGEBIET (2017) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_bezirksgebiet>`_
  * * kantone2018
    * `swissBOUNDARIES3D - TLM_KANTONSGEBIET (2018) <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_kantonsgebiet-2018>`_
  * * postleitzahlen2017
    * `Amtliches Ortschaftenverzeichnis mit Postleitzahl und Perimeter (2017) <https://public.opendatasoft.com/explore/dataset/amtliches-ortschaftenverzeichnis-mit-postleitzahl-und-perimeter>`_

USA
~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * counties2017
    * `US County Boundaries (2017) <https://public.opendatasoft.com/explore/dataset/us-county-boundaries>`_
  * * zcta2016
    * `ZCTA (2016) <https://public.opendatasoft.com/explore/dataset/us-zcta-2010>`_
  * * states2017
    * `US State Boundaries (2017) <https://public.opendatasoft.com/explore/dataset/us-state-boundaries>`_

United Kingdom
~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * wards2017
    * `Wards  (2017) <https://public.opendatasoft.com/explore/dataset/united-kingdom-wards-december-2017>`_
  * * districts2018
    * `Local Authority Districts (2018) <https://public.opendatasoft.com/explore/dataset/united-kingdom-local-authority-districts-december-2018>`_
  * * counties2017
    * `Counties and Unitary Authorities (2017) <https://public.opendatasoft.com/explore/dataset/united-kingdom-counties-and-unitary-authorities-december-2017>`_
  * * countries2017
    * `United Kingdom - Constituent Countries (2017) <https://public.opendatasoft.com/explore/dataset/uk_div1>`_

Wales (GB)
~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * parishes2016
    * `Parishes in Wales (2016) <https://public.opendatasoft.com/explore/dataset/parishes-in-wales-december-2016>`_
  * * wards2014
    * `Wards in Wales (2014) <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2014>`_
  * * parishes2014
    * `Parishes in Wales (2014) <https://public.opendatasoft.com/explore/dataset/parishes-in-wales-december-2014>`_
  * * wards2016
    * `Wards in Wales (2016) <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2016>`_
  * * counties2016
    * `Counties and Unitary Authorities in Wales (2016) <https://public.opendatasoft.com/explore/dataset/counties-and-unitary-authorities-december-2016-generalised-clipped-boundaries-i0>`_
  * * wards2015
    * `Wards in Wales (2015) <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2015>`_

World
~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * countries2016
    * `Natural Earth Countries (2016) <https://public.opendatasoft.com/explore/dataset/natural-earth-countries-1_110m>`_
  * * countries2018-iso2
    * `Earth Countries ISO2 () <https://public.opendatasoft.com/explore/dataset/country_shapes>`_
  * * countries2018-iso3
    * `Earth Countries ISO3 () <https://public.opendatasoft.com/explore/dataset/country_shapes>`_
