Managing identities
===================

.. admonition:: Prerequisite
   :class: important

   The Identities tab is only available if SAML or OpenID Connect (OIDC) is activated on the portal.

From the Identities tab, authenticated users can manage their SAML identities or link their Opendatasoft account to a SAML or an OIDC identity.

The content of the Identities tab depends on the type of the user. There are 3 types of users in Opendatasoft: Opendatasoft users, local users, and linked users.

For more information, see :doc:`../../configuring_domain/01_managing_security/saml` and :doc:`../../configuring_domain/01_managing_security/oidc`.

Identities tab for Opendatasoft users
-------------------------------------

.. image:: images/account_identities2.png

For Opendatasoft users, the Identities tab only contains a link that allows Opendatasoft users to link their Opendatasoft account to a SAML or an OIDC identity. It makes them become linked users, which changes the content of the Identity tab.

To link the account to a SAML account, click the **Link your account to a SAML account on this domain** link.

To link the account to an OIDC account, click the **Link your account to an OIDC account on this domain** link.

Identities tab for local and linked users
-----------------------------------------

.. image:: images/account_identities.png

For both local and linked users, the Identities tab contains information about the SAML or OIDC identity. Each SAML or OIDC identity is represented by a rectangle which contains all identity attributes sent by the identity provider.

For linked users only, a "Revoke" button is also displayed at the top right corner of the SAML or OIDC identity rectangle. It allows to revoke the SAML or OIDC identity without deleting the Opendatasoft account: it makes the linked users become Opendatasoft users.

To revoke a SAML or an OIDC identity:

1. Click on the **Revoke** button. A confirmation pop-up window appears.
2. Click on the **OK** button to confirm.
