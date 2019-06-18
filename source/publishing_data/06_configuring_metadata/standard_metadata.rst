Standard metadata
=================

Standard metadata are common to all Opendatasoft portal. They are the default metadata of any dataset. They should be configured in the Information > Standard tab of the edition interface of a dataset. Once the dataset is published, the standard metadata will be displayed in the Information tab of the dataset (front office).

Refer to the table below to know more about the available metadata and how to configure them.

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Usage
  * * Title
    * Title of the dataset. Only metadata located above the edition tabs of the interface instead of in the Information tab.
    * Write a dataset title in the textbox. All special characters are supported. Modifying the title does not change the technical identifier of the dataset.

**General information**

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Usage
  * * Identifier
    * Technical identifier of the dataset.
    * 1. Click the "Edit" button. A window opens.
      2. Modify the current identifier of the dataset in that window.
      3. Click the "Submit" button for the changes to be taken into account.

      .. admonition:: Warning
         :class: danger

         Changing the technical identifier of a dataset could break third-party applications using it. Embedded visualizations from the dataset also won't work anymore.
         Note also that the technical identifier cannot be modified while the dataset is published.

  * * Description
    * Description of the dataset.
    * Write a dataset description in the textbox. HTML is accepted. A set of formatting options are available in the grey bar at the top of the textbox: hover the buttons for more information and click on the chosen buttons to use any formatting option.
  * * Themes
    * Theme(s) the dataset belongs to. Dataset themes are one of the catalog filters available in the front office of an Opendatasoft portal.
    * 1. Click on the textbox. A drop down selection of the themes defined for the domain automatically appears.
      2. Click on the chosen theme.
      3. (optional) To add another theme to the dataset, click repeat steps 1 and 2 of this procedure.

      To delete a dataset theme, click on the cross at the right of the dataset theme name.
  * * Keywords
    * Keyword(s) to define the dataset and better find it through searches. Keywords are one of the catalog filters available in the front office of an Opendatasoft portal.
    * 1. Write a keyword in the textbox. It can contain special characters and be comprised of one or more words.
      2. (optional) A list of already used keywords appears, matching the letters just written in the textbox. It is possible to click on one of these keywords to reuse them.
      3. Once the keyword is selected or written, press Enter.
      4. (optional) To add other keywords, repeat steps 1 to 3 of this procedure.

      To delete a keyword, click on the cross at the right of that keyword.
  * * Display modification date
    * Date indicating when the dataset was last modified.
    * The date can either be set manually or automatically.

      * To set the date manually, click the "Update manually" button. Using the date picker displayed below the button, choose a date and time.
      * To set the date automatically, depending on which action should lead to the modification of the date, click either or both:

        * the "Update automatically when metadata has changed" button,
        * the "Update automatically when data has changed" button.

      .. admonition:: Note
         :class: note

         Depending on the dataset, some options can be unavailable.

         * If the dataset is federated, the last modification date can only be set manually.
         * If the sources are invalid, the last modification date can only be set manually, or when the metadata have changed.

**Regional information**

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Usage
  * * Language
    * Language of the data in the dataset.
    * 1. Click on the drop down menu.
      2. Choose a language amongst the Domain languages or other languages available.
  * * Geographic area
    * Geographic area of the data contained in the dataset. This metadata is directly linked to :ref:`the mini map displayed in the front office of the portal <using-the-minimap>` : if the geographic area metadata is set for a dataset, an end-user will be able to find it through a geographic search of the catalog.
    * Click the box of the chosen option amongst the following:

      * None *(default)*: the geographic area won't be set for the dataset, which won't be searchable through the mini map.
      * Auto: the geographic area will be defined as the smallest envelope containing all of the records' locations. Note that all data will be taken into account for this computation regardless of security parameters. The option is only available if the dataset contains geopoints.
      * Manual: a map appears under this option when it is chosen. Draw a shape on the right geographic area corresponding to the data of the dataset, or paste a geojson after having clicked on the map.
  * * Timezone
    * Forces the dataset visualizations to use the defined timezone for the date and datetime fields. It avoids the dataset visualizations to depend on the timezone on which the user's computer is set.
    * 1. Click on the arrow on the right of the textbox. A drop down selection of timezones appears.
      2. Click on the chosen timezone.

      .. admonition:: Note
         :class: note

         It is also possible to write in the textbox. Matching results will appear: click on a result to select it.

**Licensing & Attribution**

.. list-table::
  :header-rows: 1

  * * Name
    * Description
    * Usage
  * * License
    * License attached to the dataset.
    * 1. Click on the arrow on the right of the textbox. A drop down selection of :ref:`licences defined for the domain <licenses-config>` automatically appears.
      2. Click on the chosen license.
  * * Publisher
    * Name of the person or organization who published the dataset.
    * Write the name of the publisher in the textbox. A list of already used publisher names appears, matching the letters just written. It is possible to click on one of these names to reuse them.
  * * Reference
    * Link of the source of the dataset.
    * Enter the URL of the reference of the dataset in the textbox.
  * * Attributions
    * Link of a source of the dataset that should be mentioned for legal reasons (e.g. if the license demands the mention of a specific source or organization).
    * Enter the URL of the source in the textbox.


.. admonition:: Important
   :class: important

   Custom standard metadata can be created and activated on demand. Please contact Opendatasoft to know more about custom standard metadata.
