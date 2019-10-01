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
- Sweden
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

To set the **Repository**, follow the indications from the table of the chosen country. The table below displays the join key used by Geojoin. 

.. admonition:: Note
   :class: note

   If the referential used has a license with mandatory attribution, using Geojoin processor will transfer the attribution.

.. ifconfig:: language == 'de'

  .. raw:: html
    :file: widgets/geojoin--de.html

.. ifconfig:: language == 'en'

  .. raw:: html
    :file: widgets/geojoin--en.html

.. ifconfig:: language == 'es'

  .. raw:: html
    :file: widgets/geojoin--es.html

.. ifconfig:: language == 'fr'

  .. raw:: html
    :file: widgets/geojoin--fr.html

.. ifconfig:: language == 'nl'

  .. raw:: html
    :file: widgets/geojoin--nl.html

