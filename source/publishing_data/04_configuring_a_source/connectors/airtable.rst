Airtable connector
==================

The Airtable REST API connector is used for data extracted from an Airtable base, using their REST API.

.. admonition:: Note
  :class: note
  
  The Airtable REST API is limited to 5 requests per second per base. Try not to schedule updates of tables from the same base all at once.

Creation
--------

.. admonition:: Prerequisites
  :class: important

   - Make sure you are the owner of the Airtable table. It is mandatory to be able to connect the table to Opendatasoft.
   - Find your API key from your Airtable account page.
   - Find your Airtable API URL from your workspace (Help > API documentation > [your base] or your base (choose your table, then go to Help > API documentation). Then, from the "Authentication" section, copy the URL from ``EXAMPLE USING BEARER TOKEN (RECOMMENDED)`` without the curl and the header. This is your API URL (for example, ``https://api.airtable.com/v0/base_id/table_name``).


1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **Airtable** under the **Connect to a remote service** section.
3. Configure your Airtable connection:
   
  - Under the **Retrieve data from Airtable** section, enter your Airtable API URL in the box.
  - Under the **Authentication** section, enter your Airtable API key in the box.

4. Check the preview of the first 20 records that appears.

5. Configure the dataset information or use the pre-filled values:
      
  - In the **Dataset name** field, enter the title for this dataset.
  - In the **Technical identifier** field, enter a meaningful identifier for this dataset.
