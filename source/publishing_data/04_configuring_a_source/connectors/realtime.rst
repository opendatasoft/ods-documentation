Realtime connector
==================

The Realtime connector is used to push data to the Opendatasoft platform.

For some types of data, it can be helpful to push data instead of the more traditional model of having the data being pulled from a resource by the platform. To address this need, the Opendatasoft platform offers a realtime push API.

It is not to be confused with the ability to schedule a dataset processing. When scheduling, the dataset will periodically pull the resource and process the data inside it. In contrast, with the push API, the dataset is fed by an application through a push API, and records are processed one by one as soon as they are received.

Creation
--------

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select **Realtime** under the **Connect to a remote service** section.
3. In the **Real time data schema** box, enter some bootstrap data. The data should have all the fields that will be sent through the API.

.. admonition:: Note
   :class: note

   The bootstrap data is not used in the dataset: its sole purpose is to allow setting up the dataset.

4. Configure **Information** and **Alert Management** options.
5. Retrieve the Push API URL.

You can now use the Push API to send data to the platform. For more information, see :doc:`../../../publishing_data/03_scheduling_updates/scheduling_updates`.

Configuration
-------------

.. list-table:: Information
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Source label
     * Creates a new column with the name of the source file.
     * By default, this option is toggled off. Toggle on this option to extract the file name in an additional column.

.. list-table:: Alert management
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Alerts
     * Enables alerts

       If you expect a system to push data to the platform often, you may want to be notified if no record has been received by the platform in a while.
     * By default, this option is toggled off. Toggle on this option to enable alerts.
   * * Inactivity alert
     * Length of time before an alert is generated

       If a time span greater than the threshold has occurred during which no record has been received, you will receive an email.
     * Enter the length of time (in minutes) that should elapse before generating an alert.