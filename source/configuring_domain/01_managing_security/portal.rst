Configuring your portal's general security policy
=================================================

Public or private?
------------------

The most important choice is whether your portal should be public or private. That is whether you want anonymous users
to be able to access the portal or if you'll require people to signup before they can access anything.

.. important::

   Making your portal public doesn't mean that anybody will have access to all of the datasets! You'll always be able
   to limit what the general public can see through the use of sensible default security parameters for your datasets
   and explicit parameters on each single dataset.

   See the :doc:`dedicated section </publishing_data/09_managing_dataset_security/security>` for more information about dataset
   security.

This setting can be found in the **security** subsection of the **configuration** section of your portal's backoffice.

Note that if you decide not to allow anonymous users to access your portal, they will be redirected to the login page
unless you'd rather they land on a specific page you've written.

.. image:: images/configuration_anonymous-access.png

Signup policy
-------------

No matter your choice of public or private, you can then decide on who will be able to become a registered member of
your portal. In order to do this, go to the **Configuration/Signup** subsection of your portal's backoffice.

.. image:: images/configuration_enable-signup.png

Closed signup policy
~~~~~~~~~~~~~~~~~~~~

If you decide not to allow people to signup freely, the only way of adding members to your portal will be through
:doc:`direct email invitation </managing_domain/01_managing_users_and_groups/users>`.

Open signup policy
~~~~~~~~~~~~~~~~~~

If on the other hand you allow people to register, you'll then have to decide whether you want to manually approve each
access request to your portal or not. Note that whatever your decision, each member of the portal able to manage users
will receive a notification for each new access request.

.. image:: images/configuration_signup-approval.png

Do not forget to add the signup button to your header's menu or people won't see a signup form until they try to access
a restricted area of your portal.

.. image:: images/configuration_signup-link.png

The signup process is usually very straightforward: an email, a password and that's it. You can however decide to
customize the experience by setting up a custom text as disclaimer, request users to accept your terms and conditions
and even require that they leave a message for the portal's administrator (useful when you want to manually approve
access requests).

.. image:: images/configuration_signup-form.png

Granting access for all of your organisation's members
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If your organisation already has its own credentials management system, you can set up a bridge between your identity
provider and your Opendatasoft portal. This will give general access to your portal (no specific rights) to each of
your organisation's members.

You'll find more information about setting up such a bridge on the :doc:`SAML configuration documentation page </configuring_domain/01_managing_security/saml>`.

Configuring the users' authenticated sessions timeout
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default, all authenticated users are automatically logged out after a 2-week inactivity period. This duration can
be changed in the **Configuration/Security** section of the backoffice.

Note that every user request to the portal resets the timeout, so sessions can actually last longer than the
timeout duration.
