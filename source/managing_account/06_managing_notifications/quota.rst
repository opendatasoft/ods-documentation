API calls quota notifications
-----------------------------

The following API calls quotas are considered:

- the number of API calls allowed in your OpenDataSoft license; this is a quota shared by all users (both authenticated and anonymous).
- the quota allowed to a specific user; this can be configured in the back-office.
- the quota allowed to all anonymous users; this is a quota shared by all anonymous users, and it can be configured in the back-office.

A notification email is sent when any of these conditions is met:

- 80% of the allowed API calls have been reached for a given quota
- the maximum number of allowed API calls has been reached for a given quota


Recipients
~~~~~~~~~~

- the user with the expired quota, if the notification is triggered on the user's quota
- all users on the domain with the "Edit all datasets" permission

Sample
~~~~~~

.. image:: images/quota__sample--en.png
   :alt: API calls quota alert
