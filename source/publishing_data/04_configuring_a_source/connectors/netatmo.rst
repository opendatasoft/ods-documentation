Netatmo extractor
=================

.. admonition:: Important
   :class: important

   This connector is not available by default. Please contact OpenDataSoft for the activation of this connector on a given OpenDataSoft domain.

The Netatmo connector is used to extract data from the Netatmo API.

This connector features 2 modes:

* the `Weathermap <https://weathermap.netatmo.com/>`_ mode, to create a dataset with the current data from every public Netatmo station,
* the history mode, to create a dataset with the historical data from one specific Netatmo station.

Creation
~~~~~~~~

.. admonition:: Prerequisite
   :class: important

   For this connector to work, an application must be created on Netatmo Connect beforehand. The "Technical Parameters" section of the application, in the website, displays information that are required to configure the Netatmo connector, such as the Client Id and the Client Secret.

1. Enter ``netatmo://`` in the Enter a URL area, when creating a new dataset.
2. Press Enter, or click the + button.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Client Id
     * Client Id of the application created on Netatmo Connect.
     * Paste the client Id of the application in the textbox.
   * * Client Secret
     * Client Secret of the application created on Netatmo Connect.
     * Paste the client secret of the application in the textbox.
   * * Username
     * Username of the user's personal Netatmo account.
     * Write the username in the textbox.
   * * Password
     * Password of the user's personal Netatmo account.
     * Write the password in the textbox.
   * * MAC address
     * Indicates whether the connector should be used in weathermap or history mode.
     * * To use the connector in Weathermap mode: leave the textbox empty. In the created dataset, there will be one record per station available on the Netatmo Weathermap.
       * To use the connector in history mode: paste the MAC adress of the station (displayed in the Parameters section of a Netatmo account) in the textbox. The created dataset will be the whole history of the data retrieved for the given Netatmo station.
   * * Filter stations
     * If checked, excludes all stations with abnormal temperature measures. This configuration only works for the Weathermap mode of the connector.
     * By default, the box is not checked. Check the box to filter stations.
