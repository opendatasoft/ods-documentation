JCDecaux bikes connector
========================

JCDecaux bikes stations states can be retrieved by this connector.
It creates records for one or more contracts containing the name of the station, the capabilities, the number of bikes available, the number of slots available.


Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * contracts
     * The list of contracts on which filter the data
     * Values can be found on the official `documentation <https://developer.jcdecaux.com/#/opendata/vls?page=dynamic>`_
   * * apikey
     * The API key of your account on the JCDecaux API
     *


Creation
~~~~~~~~

Enter *jcdecaux://bicycles/data* in the URL box.


.. admonition:: Note
   :class: note

   The JCDecaux Bike Stations datasets is available on our `data portal <https://data.opendatasoft.com/explore/dataset/jcdecaux_bike_data@public/>`_. You can easily federate it to use the data.
