Quota notifications
-------------------

Notification are sent on quotas when any of these conditions is reached:

- 80% of the authorized API calls have been reached
- Maximum number of authorized API calls is reached


The following quota are protected:

- global quota allowed in the license. A global value shared by all authenticated users and all anonymous users
- quota allowed to an user. A custom value, can be setup via a group or specific to an user.
- quota allowed to the anonymous user. A global value for all anonymous users.


Recipients
~~~~~~~~~~

- The user with the expired quota
- All users on the domain with the "Edit all datasets" permission.

Sample
~~~~~~

.. image:: quota__sample--en.png
   :alt: Quota alert
