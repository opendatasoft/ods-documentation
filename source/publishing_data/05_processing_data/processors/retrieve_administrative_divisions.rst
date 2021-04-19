Retrieve Administrative Divisions processor
===========================================

This processor uses a geo point to retrieve information (name, code and geo shapes) of administrative divisions.

The Retrieve Administrative Divisions processor is available for the following countries:

- Australia
- Belgium
- Canada
- England
- France
- Germany
- Mexico
- the Netherlands
- Portugal
- Scotland
- Spain
- Sweden
- Switzerland
- United Kingdom
- United States
- Wales
- World

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

.. _referentials:

Referentials
------------

When a real country is chosen, the administrative levels corresponding to that country are explicitely written. However, when using the 'World' country, an administrative level between 1 and 7 must be chosen. Please refer to the table below to have an idea of what the administrative levels are for each country currently available in the processor.

.. admonition:: Note
   :class: note

   When using the 'World' country, the processor will try to retrieve the divisions corresponding to the chosen level (between 1 and 7). The results can however be irrelevant in some cases since administrative divisions are not homogenized across countries (e.g. the french "cantons" will be at level 4 whereas swiss "kantons" will be at level 2).


.. admonition:: Note
   :class: note

   If the referential used has a license with mandatory attribution, using Retrieve Administrative Divisions processor will transfer the attribution.

.. ifconfig:: language == 'de'

  .. raw:: html
    :file: widgets/geodomain--de.html

.. ifconfig:: language == 'en'

  .. raw:: html
    :file: widgets/geodomain--en.html

.. ifconfig:: language == 'es'

  .. raw:: html
    :file: widgets/geodomain--es.html

.. ifconfig:: language == 'fr'

  .. raw:: html
    :file: widgets/geodomain--fr.html

.. ifconfig:: language == 'nl'

  .. raw:: html
    :file: widgets/geodomain--nl.html
