Airtable connector
==================

The Airtable REST API connector is used for data extracted from an Airtable base, using their REST API.
This connector is not available by default. Please contact Opendatasoft for the activation of this connector on a given Opendatasoft domain.

Creation
--------

1. Find your Airtable API URL from : 

- your workspace : Help > API documentation > [your base] > Authentification
- your base : Choose your table then go in Help > API documentation > Authentification

2. Check the ``show API key`` checkbox and copy the ``EXAMPLE USING QUERY PARAMETER`` without the curl, this is your API URL. (e.g. https://api.airtable.com/v0/base_id/table_name?api_key=api_key)
3. Enter the URL to the layer in the Enter a URL area, when creating a new dataset.
4. Press Enter, or click the + button.

.. admonition:: Note
   :class: note

   In the example `https://api.airtable.com/v0/base_id/table_name?api_key=api_key` the ``base_id`` field stands for the ID of your Airtable database. The ``table_name`` field  stands for the name of the table to import from the database in unicode encoding.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Default Value
   * * Base ID
     * ID of your Airtable database
     * By default, the textbox is extracted from the ``base_id`` field of the URL.
   * * Table Name
     * Name of the table to import from the database
     * By default, the textbox is extracted from the ``table_name`` field of the URL.
   * * API key
     * Airtable account API key
     * By default, the textbox is extracted from the ``api_key`` field of the URL.

.. admonition:: Note
   :class: note
   
   The Airtable Rest API is limited to 5 requests per second per base. Try not to scheldule updates of tables from the same base  all at once.