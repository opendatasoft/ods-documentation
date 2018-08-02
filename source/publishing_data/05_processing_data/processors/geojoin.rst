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
^^^^^^^

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * arrondissements2008
    * `Arrondissements Belges <https://public.opendatasoft.com/explore/dataset/arrondissements-belges>`_
  * * cantons2008
    * `Cantons Belges <https://public.opendatasoft.com/explore/dataset/cantons-belges>`_
  * * communes2008
    * `Communes Belges <https://public.opendatasoft.com/explore/dataset/communes-belges>`_
  * * provinces2008
    * `Provinces Belges <https://public.opendatasoft.com/explore/dataset/provinces-belges>`_
  * * regions2008
    * `Régions Belges <https://public.opendatasoft.com/explore/dataset/regions-belges>`_

Canada
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * census-divisions2011
    * `Canadian Census Divisions <https://public.opendatasoft.com/explore/dataset/canadian-census-subdivisions>`_
  * * census-subdivisions2011
    * `Canadian Census Subdivisions <https://public.opendatasoft.com/explore/dataset/canadian-census-subdivisions0>`_
  * * county2011
    * `Intercensal Canada <https://public.opendatasoft.com/explore/dataset/intercensal-canada>`_
  * * province2003
    * `Canada Provinces <https://public.opendatasoft.com/explore/dataset/canada-provinces>`_

England (GB)
~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * county2016
    * `Counties and Unitary Authorities in England <https://public.opendatasoft.com/explore/dataset/counties-and-unitary-authorities-december-2016-generalised-clipped-boundaries-in>`_
  * * region2016
    * `Regions in England <https://public.opendatasoft.com/explore/dataset/regions-in-england-december-2016>`_
  * * ward2014
    * `Wards in England 2014 <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2014>`_
  * * ward2015
    * `Wards in England 2015 <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2015>`_
  * * ward2016
    * `Wards in England 2016 <https://public.opendatasoft.com/explore/dataset/wards-in-england-december-2016>`_
  * * parish2014
    * `Parishes in England 2014 <https://public.opendatasoft.com/explore/dataset/parishes-in-england-december-2014>`_
  * * parish2016
    * `Parishes in England 2016 <https://public.opendatasoft.com/explore/dataset/parishes-in-england-december-2016>`_

France
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * cantons2015
    * `Cantons <https://public.opendatasoft.com/explore/dataset/decoupage-des-cantons-pour-les-elections-departementales-de-mars-2015>`_
  * * communes2013
    * `Geofla® - Communes 2013 <https://public.opendatasoft.com/explore/dataset/geoflar-communes>`_
  * * communes2015
    * `Geofla® - Communes 2015 <https://public.opendatasoft.com/explore/dataset/geoflar-communes-2015>`_
  * * communes2016
    * `Geofla® Commune 2016 <https://public.opendatasoft.com/explore/dataset/geoflar-communes-2016>`_
  * * departements-simplifies2015
    * `Contours simplifiés des départements Français 2015 <https://public.opendatasoft.com/explore/dataset/contours-simplifies-des-departements-francais-2015>`_
  * * departements2015
    * `Geofla® - Départements 2015 <https://public.opendatasoft.com/explore/dataset/geoflar-departements-2015>`_
  * * epci2016
    * `Etablissements Publics de Coopération Intercommunale (EPCI) <https://public.opendatasoft.com/explore/dataset/contours-epci>`_
  * * iris-epci2016
    * `Contours IRIS 2016 avec EPCI <https://public.opendatasoft.com/explore/dataset/contours-iris-2016-epci>`_
  * * iris2014
    * `Contours IRIS 2014 <https://public.opendatasoft.com/explore/dataset/contours-iris-2014>`_
  * * iris2015
    * `Contours IRIS 2015 <https://public.opendatasoft.com/explore/dataset/contours-iris-2015>`_
  * * iris2016
    * `Contours IRIS 2016 <https://public.opendatasoft.com/explore/dataset/contours-iris-2016>`_
  * * postcode2013
    * `Carte des Codes Postaux <https://public.opendatasoft.com/explore/dataset/contour-des-codes-postaux>`_
  * * regions-simplifiees2016
    * `Contours géographiques simplifiés des nouvelles régions (métropole) <https://public.opendatasoft.com/explore/dataset/france-regions-2016-contours-simplifies>`_
  * * regions1970
    * `Contours des régions françaises sur OpenStreetMap <https://public.opendatasoft.com/explore/dataset/contours-des-regions-francaises-sur-openstreetmap>`_
  * * regions2016
    * `Contours géographiques des nouvelles régions (métropole) <https://public.opendatasoft.com/explore/dataset/contours-geographiques-des-nouvelles-regions-metropole>`_

Germany
~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * lander2016
    * `Deutschland Länder <https://public.opendatasoft.com/explore/dataset/deutschland-lander>`_
  * * postleitzahlen2016
    * `Postleitzahlen Deutschland <https://public.opendatasoft.com/explore/dataset/postleitzahlen-deutschland>`_

Mexico
~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * estados2017
    * `Estados de México <https://public.opendatasoft.com/explore/dataset/estados-de-mexico>`_

The Netherlands
~~~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * postcode2015
    * `Nederland Postcodes <https://public.opendatasoft.com/explore/dataset/openpostcodevlakkenpc4>`_

Scotland (GB)
~~~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * ward2014
    * `Wards in Scotland 2014 <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2014>`_
  * * ward2015
    * `Wards in Scotland 2015 <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2015>`_
  * * ward2016
    * `Wards in Scotland 2016 <https://public.opendatasoft.com/explore/dataset/wards-in-scotland-december-2016>`_

Spain
~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * comunidades-autonomas2012
    * `Comunidades Autónomas españolas <https://public.opendatasoft.com/explore/dataset/comunidades-autonomas-espanolas>`_
  * * provincias2012
    * `Provincias españolas <https://public.opendatasoft.com/explore/dataset/provincias-espanolas>`_

Switzerland
~~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * bezirke2017
    * `swissBOUNDARIES3D - TLM BEZIRKSGEBIET <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_bezirksgebiet>`_
  * * postleitzahl2017
    * `Amtliches Ortschaftenverzeichnis mit Postleitzahl und Perimeter <https://public.opendatasoft.com/explore/dataset/amtliches-ortschaftenverzeichnis-mit-postleitzahl-und-perimeter>`_
  * * gemeinde2017
    * `swissBOUNDARIES3D - TLM HOHEITSGEBIET <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_hoheitsgebiet>`_
  * * kantone2017
    * `swissBOUNDARIES3D - TLM_KANTONSGEBIET <https://public.opendatasoft.com/explore/dataset/swissboundaries3d-tlm_kantonsgebiet>`_

The USA
~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * county2017
    * `US County Boundaries <https://public.opendatasoft.com/explore/dataset/us-county-boundaries>`_
  * * state2017
    * `US State Boundaries <https://public.opendatasoft.com/explore/dataset/us-state-boundaries>`_
  * * zcta2016
    * `ZCTA <https://public.opendatasoft.com/explore/dataset/us-zcta-2010>`_

Wales (GB)
~~~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * county2016
    * `Counties and Unitary Authorities in Wales <https://public.opendatasoft.com/explore/dataset/counties-and-unitary-authorities-december-2016-generalised-clipped-boundaries-i0>`_
  * * ward2014
    * `Wards in Wales 2014 <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2014>`_
  * * ward2015
    * `Wards in Wales 2015 <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2015>`_
  * * wards2016
    * `Wards in Wales 2016 <https://public.opendatasoft.com/explore/dataset/wards-in-wales-december-2016>`_
  * * parish2014
    * `Parishes in Wales 2015 <https://public.opendatasoft.com/explore/dataset/parishes-in-wales-december-2014>`_
  * * parish2016
    * `Parishes in Wales 2016 <https://public.opendatasoft.com/explore/dataset/parishes-in-wales-december-2016>`_

World
~~~~~

.. list-table::
  :header-rows: 1

  * * Repository
    * Source
  * * countries2016
    * `Natural Earth Countries <https://public.opendatasoft.com/explore/dataset/natural-earth-countries-1_110m>`_
