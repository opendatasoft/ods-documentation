JCDecaux connector
==================

The JCDecaux connector retrieves the state of JCDecaux bicycle stations. It creates a dataset with records containing bicycle stations data.

.. admonition:: Note
  :class: note

  The JCDecaux Bike Stations dataset is available on the `Opendatasoft data network <https://data.opendatasoft.com/explore/dataset/jcdecaux_bike_data@public/>`_. You can federate it to use the data.

Using the JCDecaux connector, you can retrieve two types of data:

* JCDecaux Bicycle Stations Data provides dynamic real-time data (no historical data), including station state, number of available bikes, number of free bike stands, etc.
* JCDecaux Bicycle Stations provides static and stable data, including station position, number of bike stands, payment terminal availability, etc.

.. admonition:: Important
  :class: important

  This connector is not available by default. Please contact Opendatasoft for the activation of this connector on a given Opendatasoft domain.


Creation
--------

Before you begin, retrieve your API key from JCDecaux's developer website.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **JCDecaux** under the **Configure a remote service** section.
3. Under the **Retrieve data from JCDecaux** section, enter your JCDecaux API key in the **API key** box.
4. From the preview of the first 20 records that appears, do the following:

   a. From the **Type** list, select whether you want to retrieve **JCDecaux Bicycle Stations Data** (dynamic real-time data) or **JCDecaux Bicycle Stations** (static and stable data).
   b. Configure the data source.

5. Configure the dataset information or use the pre-filled values:
   
   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.


Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Cities
     * Filter data by city
     
       In the resulting dataset, the ``contract_name`` column contains city names where JCDecaux bicycle stations are located.
     * No value is selected by default, meaning that data from bicycle stations in all cities is retrieved.
     
       From the **Cities** list, you can select one or more city names to only retrieve data about those cities.
