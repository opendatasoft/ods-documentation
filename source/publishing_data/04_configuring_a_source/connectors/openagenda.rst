OpenAgenda connector
====================

.. admonition:: Important
   :class: important

   This connector is not available by default. Please contact Opendatasoft for the activation of this connector on a given Opendatasoft domain.

The OpenAgenda connector extracts events from an agenda, using the OpenAgenda REST API. For more information, refer to the `OpenAgenda documentation <https://developers.openagenda.com/>`__.


Creation
~~~~~~~~

1. Enter a space in the Enter a URL area, when creating a new dataset.
2. Press Enter, or click the + button.
3. Select OpenAgenda V2 Extractor from the Type list in the Source configuration area.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Agenda
     * Unique identifier for the agenda.
     * This field is required.
   * * API key
     * Unique identifier for your OpenAgenda account. You can find your API key in your OpenAgenda account settings.
     * Providing an API key is optional, but it lets you access OpenAgenda data faster.
   * * Incremental updates
     * When enabling incremental updates, the first publication loads all data. Subsequent updates are incremental.
     * To enable incremental updates, click the toggle.
   * * Language
     * Language for the event, if specified. Represented as the language code for the specified language.
     * If no value has been selected or entered, then events in all languages are extracted.
   * * Country
     * Country where the event takes place. Represented as the country code for this country.
     * If no value has been selected or entered, then events for all country codes are extracted.
   * * Languages to extract
     * Languages to be extracted from multilingual fields.
     * Allowed values are ``fr`` (French), ``en`` (English), ``de`` (German), ``it`` (Italian), and ``es`` (Spanish). When creating the dataset, ``fr`` is the default value.
     
       If no value has been selected or entered, then multilingual fields are not extracted.
   * * Labels language
     * Language of the fields used as column headers.
     * Allowed values are ``fr`` (French) and ``en`` (English). ``fr`` is the default value.
   * * Custom fields to extract
     * Custom fields that do not belong to the standard fields in OpenAgenda agendas.
     
       For more information, refer to the `OpenAgenda documentation <https://developers.openagenda.com/export-json-dun-agenda/>`__.
     * Enter the name of the custom fields to be extracted. Each custom field is extracted as a text field.
   * * Tags to extract
     * Tags represent properties of an event. Tag groups categorize tags. 
     * Enter the name of the tag groups to be extracted. Each tag group is extracted as a text field.
