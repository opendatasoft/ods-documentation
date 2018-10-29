JCDecaux connector
==================

.. admonition:: Important
   :class: important

   This connector is not available by default. Please contact OpenDataSoft for the activation of this connector on a given OpenDataSoft domain.

The JCDecaux Bicycles Stations Data connector is used to retrieve the state of JCDecaux bike stations. It creates a dataset with records for one or more contracts, containing the name of the station, the capabilities, the number of available bikes, and the number of available slots.

Creation
~~~~~~~~

1. Enter ``jcdecaux://bicycles/data`` in the Enter a URL area, when creating a new dataset.
2. Press Enter, or click the + button.

.. admonition:: Note
   :class: note

   The JCDecaux Bike Stations dataset is available on our `data portal <https://data.opendatasoft.com/explore/dataset/jcdecaux_bike_data@public/>`_. You can federate it to use the data.


Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * API key
     * API key of the user's account on the JCDecaux API.
     * By default, the textbox is empty. It must be filled otherwise the dataset will remain empty. Retrieve the API key on the JCDecaux API and paste it in the textbox.
   * * City
     * To filter the data by city.
     * By default, the textbox is empty. Check the "contract_name" field in the dataset preview to find the name of the existing cities. Add one or more city names to filter the data.
