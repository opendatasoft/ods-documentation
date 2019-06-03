Dataset actions and statuses
============================

Actions
~~~~~~~

**Actions related to the life cycle of a dataset**

.. list-table::
  :header-rows: 1

  * * Action
    * Button
    * Description
  * * Save
    * .. image:: images/button_save.png
    * Saves all new modifications, processings and configurations operated on the dataset.
  * * Publish
    * .. image:: images/button_publish.png
    * Makes the dataset's modifications go live on the portal. The duration of the publishing varies depending on the dataset, and the nature of the modifications.
  * * Abort
    * .. image:: images/button_abort.png
    * Replaces the Publish button after clicking on it, and only lasts until the end of the publishing. Stops the publishing and leaves the dataset in a clean state, but incomplete since not all records have been processed.
  * * Unpublish
    * .. image:: images/button_more-actions.png
      .. image:: images/button_unpublish.png
    * Removes the dataset from the front office catalog, deleting all the records during the process. In some cases, data can be lost because of an unpublishing (i.e. realtime without recovery, specific connectors etc.)
  * * Delete dataset
    * .. image:: images/button_more-actions.png
      .. image:: images/button_delete.png
    * Removes the dataset from both front office and back office catalogs. Entirely deletes the dataset, its records and everything else related to the dataset.

**Actions related to the configuring/processing of a dataset**

.. list-table::
  :header-rows: 1

  * * Action
    * Button
    * Description
  * * Undo
    * .. image:: images/button_more-actions.png
      .. image:: images/button_undo.png
    * Reverses the last action operated on the dataset.
  * * Redo
    * .. image:: images/button_more-actions.png
      .. image:: images/button_redo.png
    * Reoperates the action last reversed on the dataset.
  * * Duplicate dataset
    * .. image:: images/button_more-actions.png
      .. image:: images/button_duplicate.png
    * Creates an exact same copy of the dataset.

Statuses
~~~~~~~~

.. list-table::
  :header-rows: 1

  * * Status
    * Description
  * * Queued
    * The processing is waiting to get started.
  * * Processing
    * The processing is ongoing. Records are extracted from the connector, processors are applied and the result is made available through the Opendatasoft API. The number of records increases during this step.
  * * Unpublishing
    * The dataset is being unpublished, thus removed from the API.
  * * Aborting processing
    * The ongoing processing stops at where it was when the **Abort** button was pushed.
