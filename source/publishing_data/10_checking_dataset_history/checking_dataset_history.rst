Checking dataset history
========================

The History tab displays the list of items representing all modifications operated on the dataset since its creation.

.. admonition:: Important
   :class: important

   The actions operated on both the Security and Scheduling tabs are never taken into account to update the dataset history, thus never displayed in the History tab.

.. image:: images/history_tab.png

Each listed item gives the following information:

- name of the user who operated the action(s)
- date when the modification was operated
- nature of the modification

.. admonition:: Note
   :class: note

   The only item without any modification description should be at the bottom of the history: it corresponds to the creation of the dataset.

Reverting to a former configuration
-----------------------------------

It is possible to revert to a former version of the dataset by clicking on an item from the History tab.

Instead of erasing items from the list, it creates a new item indicating which modifications were operated to revert to the chosen former configuration.

.. admonition:: Caution
   :class: caution

   Use this feature with caution, as it can be risky for the dataset when it comes to more important configurations. We especially would not advise to go back to a configuration that was operated before a source change.

   Note also that in case the dataset was duplicated: it isn't possible to revert to a former version if the dataset source was added by another user.
