Managing access requests
========================

Access requests are generated each time somebody registers on your portal and you've requested manual approval of each
signup.

.. admonition:: Note
   :class: note

   Unsure about what this means? Check the :doc:`portal security policy section </configuring_domain/01_managing_security/portal>`!

You'll find access requests in your portal's backoffice, within the **Users & groups** section. If you have pending
access requests, their number will show up in a notification right within the menu.


.. ifconfig:: language == 'en'

    .. image:: images/access_requests__menu--en.png
        :alt: The notification shows up in the backoffice menu

.. ifconfig:: language == 'fr'

    .. image:: images/access_requests__menu--fr.png
        :alt: The notification shows up in the backoffice menu

For each pending access request, you'll find the user's details (username, first name and last name) alongside their
request message (if any) and the two *approve* and *reject* buttons.

.. ifconfig:: language == 'en'

    .. image:: images/access_requests__index--en.png
        :alt: The access requests list

.. ifconfig:: language == 'fr'

    .. image:: images/access_requests__index--fr.png
        :alt: The access requests list

Rejecting an access request will send an email to its author saying so. Approving it on the other hand will send a
notification to the user and add him/her to the list of your portal's members. He/she will automatically get the default
permissions you've set up for new users.

For more information about users management, check the :doc:`dedicated section </managing_domain/01_managing_users_and_groups/users>`.
