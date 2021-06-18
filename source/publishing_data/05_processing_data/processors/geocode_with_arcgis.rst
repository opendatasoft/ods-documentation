Geocode with ArcGIS processor
=============================

This processor allows to geocode full text addresses by using the ArcGIS geocoding API.

This processor can be connected with a custom ArcGIS geocoder. Please contact Opendatasoft support team if you want this configuration to be activated in your domain.

.. admonition:: Prerequisites
   :class: important

   - Make sure you have an ArcGIS paying account.
   - Register an application in your ArcGIS developer dashboard.
   - Retrieve the authorization credentials (``client ID`` and ``client secret``) for the registered application from your ArcGIS account.

Configuring the Client ID and Client Secret
-------------------------------------------

Before using the processor, configure the ArcGIS geocoding API with the Client ID and Client Secret you obtained in your ArcGIS developer dashboard.

1. In the back office, go to **Configuration** > **Data processing**.
2. In the **ArcGIS geocoding API** section, enter your Client ID and Client Secret in the corresponding fields.
3. Click on the **Save** button at the top of the page.

You can now use the Geocode with ArcGIS processor.

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
    * Field that will contain the produced WSG84 coordinates.
    
      You can select an existing field from the list or create a new field create for that purpose.

      To create a new field, select **Input text** from the list and enter the name of the new field.
    * yes
