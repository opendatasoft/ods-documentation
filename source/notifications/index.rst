Notifications
=============

Notifications are sent whenever an important event occur on the portal. They give realtime information about the health of the portal.

It’s possible for users to unsubscribe to the different notification type on their account page.

Quota notifications
-------------------

Notification are sent on quotas when any of these conditions is reached:

- 80% of the authorized requests have been reached
- Maximum number of authorized requests is reached


Recipients
~~~~~~~~~~

The user with the expired quota and all users on the domain with an edit_dataset permission.


Alert notifications
-------------------

The following events trigger an alert notification:

- A realtime dataset did not receive data for a period of time
- A dataset finished its processing with errors


Recipients
~~~~~~~~~~

- Users on the domain with an edit_dataset permission
- Users on the dataset's security with an edit_dataset permission


Daily report
------------

The daily report contains a recap of the portal health:

- Open alerts for realtime datasets ie not data received for a period of time
- Datasets in error due to a processing (scheduled or trigger)

They are sent every day at 9AM (CET).


Recipients
~~~~~~~~~~

- Users on the domain with an edit_dataset permission
