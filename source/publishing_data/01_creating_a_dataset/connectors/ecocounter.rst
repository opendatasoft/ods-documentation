Eco Counter connector
=====================

The Eco Counter connector retrieves count data from Eco Counter's Eco-Visio platform. It creates a dataset with records about counting sites and counters.

Using the Eco Counter connector, you can retrieve two types of data:

* Eco Counter Data provides data about a counter, including the counting Site ID where the counter is installed, etc.
* Eco Counter Sites provides data about counting sites, including site position, installation date, etc.

.. admonition:: Important
  :class: important

  This connector is not available by default. Please contact Opendatasoft for the activation of this connector on a given Opendatasoft domain.


Creation
--------

Before you begin, retrieve your Eco Counter API key.

1. Choose an option:
   
   - If you want to create a dataset, click **Catalog** > **Datasets** and click the **New dataset** button.
   - If you want to add a source to an existing dataset, click **Catalog** > **Datasets** and select the desired dataset. Then, click **Add a source**.

2. In the wizard that opens, select **EcoCounter** under the **Configure a remote service** section.
3. Under the **Retrieve data from EcoCounter** section, enter your EcoCounter API key in the **API key** box.
4. From the preview of the first 20 records that appears, do the following:

   a. From the **Type** list, select whether you want to retrieve **Eco Counter Data** or **Eco Counter Sites**.
   b. Configure the source.

5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.


Configuration
-------------

.. list-table:: Data Extraction configuration (for Eco Counter Data only)
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Beginning of the period
     * Start date of the data period (included). If no start date has been defined, the first data date will be used.
     * From the calendar, select the start date.
   * * End of the period
     * End of the data period (included). If no end date has been defined, the last data date will be used.
     * From the calendar, select the end date.
   * * Step
     * Data interval
     * From the **step** list, select the data interval.
   * * Complete data holes with null values
     * Completes data holes with null values
     * This option is toggled on by default.

.. list-table:: Extract channel data
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Extract channels
     * Extracts the list of the channels of the counting site
     * Toggle on this option to extract the list of the channels of the counting site in additional fields.

