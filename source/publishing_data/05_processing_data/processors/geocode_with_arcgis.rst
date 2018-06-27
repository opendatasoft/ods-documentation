Geocode with ArcGIS processor
=============================

This processor allows to geocode full text addresses by using the ArcGIS geocoding API.

This processor requires an ArcGIS API key.

Setting the API key
-------------------

To setup an ArcGIS API key in order to use this processor:

1. Leave the Catalog tab and click on the Configuration tab in the backoffice menu.
2. Click on the **Data processing** tab of the Configuration menu.
3. In the **ArcGIS geocoding API** section, fill in the following parameters: Client ID, Client secret.
4. Click on the **Save** button at the top of the page.

Setting the processor
---------------------

After setting the ArcGIS API key in the platform, the Geocode with ArcGIS processor is ready to be used.

To set the parameters of the Geocode with ArcGIS processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Address
    * Field containing the address to geocode
    * yes
  * * Postal code
    * Field containing the postal code
    * no
  * * City
    * Field containing the city
    * no
  * * State
    * Field containing the state
    * no
  * * Country
    * Field containing the country
    * no
  * * Output field
    * Field that will contain the produced WSG84 coordinates. It can be an existing field chosen from the list, or a new field created for that purpose (in that case, choose **Input text** from the list and write the name of the new field in the text area below).
    * yes
