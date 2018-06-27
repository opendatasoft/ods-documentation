Geocode with BAN (France) processor
====================================

This processor allows you to geocode addresses in France by using the `Base d'Adresses Nationale (BAN) <https://adresse.data.gouv.fr/>`_ service.

Setting the processor
---------------------

To set the parameters of the Geocode with BAN processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Address
    * Field containing the French address to geocode
    * yes
  * * Postal code
    * Field containing the French postal code
    * no
  * * INSEE code
    * Field containing the French INSEE code
    * no
  * * City
    * Field containing the French city
    * no
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
