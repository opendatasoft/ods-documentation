Publishing datasets
===================

A dataset has a dedicated life cycle: It's start in the backoffice (not published), you configured the sources, the processors, the security and then you publish it.
The dataset appears in the frontoffice (according to the security rules).
When you make modifications on the dataset, they are pushed to the publish version when you click on the *publish* button.
At any time you can remove a dataset from the by the *unpublish* action,


.. ifconfig:: language == 'en'

    .. image:: images/publish__actions--en.png
        :alt: Actions

.. ifconfig:: language == 'fr'

    .. image:: images/publish__actions--en.png
        :alt: Actions

Actions
~~~~~~~

* Publish: Make the dataset's modifications live. This action duration can be various, it depends if only metadata have changed or if the dataset schema changed.
* Unpublish: It removes the dataset from the calalog and all records are deleted. In some case data can be lost (realtime without recovery, specific connectors).
* Abort: It sends the *abort* order to the processing process. It will leave the dataset in a clean but incomplete state (not all records have been processed).

Statuses
~~~~~~~~

Dataset processing is perform asynchronously to ensure the best performance and no interference with others processing tasks.
Different status are reachable by a dataset during the processing task.

* Queued: The processing task is waiting to be pick up.
* Processing: Records are extracted from the connector, processors are applied and the result is made available through the OpenDataSoft API. Records number increased during this step.
* Unpublishing: Dataset is removed from the API.
* Aborting processing: The *abort* order has been sent to the platform. The dataset processing will stop within the next minute.
* Limit reached: The user who launched the processing job reached its allowed quota. He overtakes one of the limit (from the domain, the group of the user).
