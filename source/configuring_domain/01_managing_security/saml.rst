Federate identity with SAML
===========================

Some organizations already have a user directory service that manages their users authentication and permission, and see little value in using the built in OpenDataSoft user management features.

In order to address this use case, the OpenDataSoft platform supports external Identity Providers (IdP) through the SAMLv2 standard. This allows for setting up an identity federation between a domain, which will act as a service provider, and this IdP. This federation allows users of a domain to connect to the platform using the identity provider, and if they have one, reuse their active security context to create a SSO mechanism.

When a SAML identity provider is configured on a domain, a user can belong in 3 categories.

- A standard **OpenDataSoft user** that was invited by e-mail or signed-up on a domain: this user logs in on the domain using the standard sign-in interface with their usual OpenDataSoft username and password, and the account is accessible on the whole OpenDataSoft network. OpenDataSoft users are represented throughout the platform with the |icon-world| pictogram.

- A **local user** that authenticates through the organization's IdP: this user logs in on the domain exclusively via the organization's IdP, and as it is only available on a specific domain, it can be limited in the use of features relying on the OpenDataSoft network. Local users are represented throughout the platform with the |icon-id-card| pictogram.

- A **linked user** that has a standard OpenDataSoft account, but associated on this specific domain with an identity from the organization's IdP. This user is a standard OpenDataSoft user that can both authenticate through the OpenDataSoft sign-in interface and the organization's IdP. Since linked users are OpenDataSoft users with SAML authentication abilities, they are represented throughout the platform with both the |icon-world| and the |icon-id-card| pictograms.

Local user
----------

Every user that has a user account on the IdP trusted by a domain and doesn't have an OpenDataSoft user account can connect through SAML. On first connection, a local user will be created for the user based on the domain's SAML settings.

These settings are:

- the **account mapper**: a set of IdP-sent parameters that uniquely identify a user,
- the **attribute mapper**: the parameters that correspond to the user first name, last name and email address.

These local users have the permission to explore the public datasets of the domain by default. Extra permissions can be given to these users at the domain level, on individual datasets or via groups (other than the ``SAML users`` group, of which they are automatic members).

The creation of new local users via an IdP authentication can be disabled using the "Disable local user provisioning" checkbox in the SAML configuration. Disabling local user provisioning will not prevent existing local users from signing in using SAML.

Linked user
-----------

Users that have an OpenDataSoft user account can link this account to particular values of the set of parameters defined in the account mapper setting.

After the link has been established, users who log in through SAML will be logged in to their OpenDataSoft user account. Linked users may be assigned the any permissions and added to groups just like any users and are considered as OpenDataSoft users. They are also automatic members of the ``SAML users`` group.

This mode allows any user to have an OpenDataSoft account, but still connect through SAML on a specific domain.

There are 2 methods for linking an OpenDataSoft user account:

- the first one is to click on ``Link your account to a SAML account on this domain`` in the identity tab of the user account settings:

.. image:: images/saml__link--en.png
    :alt: "Link your account to a SAML account on this domain" link in the identity tab of the user account settings

- the other method is to create the link during the user account creation process by clicking the link to complete the registration through SAML. This actually speeds up the user account creation process and allows for a quick account linking:

.. image:: images/saml__validation-link--en.png
    :alt: Account registration in SAML enabled domains

Automatic Single Sign On
------------------------

The OpenDataSoft platform offers a mechanism to automatically log in users when they first visit the domain.

It works by starting the SAML authentication flow for anonymous users, as if they had clicked "log in with SAML", as soon as they encounter (almost) any page in the domain. This feature only makes sense for private domains as it prevents anonymous access to the domain. When Automatic Single Sign On is activated, users who wish to connect to the platform using their OpenDataSoft credentials have the option to do so by manually visiting the domain login page at ``https://<platform-url>/login/``


Single Log Out
--------------

The OpenDataSoft platform supports the standard SAML Single Log Out flow using the HTTP-Redirect binding. That means that if the IdP supports it, a log out from a SAML-connected user will trigger a log out from the IdP, and log out requests from the IdP will trigger a log out of the user on the platform.


Register and configure an identity provider
-------------------------------------------

1. Navigate to the signup page in the domain configuration interface.

.. image:: images/saml__signup--en.png
    :alt: Signup configuration page

2. Check "Allow access for SAML users"

.. image:: images/saml__config--en.png
    :alt: SAML IDP configuration interface

3. Paste your identity provider metadata document in the "IDP metadata document" field.

4. If you are using Microsoft Azure Active Directory as an IDP, check the related checkbox.

5. If you wish to disable transient connection mode, thereby making sure only linked users can connect to the platform through SAML, check the related checkbox.

6. Input the set of attributes sent by the IDP that uniquely define a user.

   If the users are defined by their NameID and the NameID format used by your IdP is not transient, there is no need to fill anything.

   For instance, if your users are defined by the attribute "FirstName" and "LastName" transmitted by your IdP, first input "FirstName" in the box and press enter, then "LastName" and press enter again.

7. Input the attributes mappings for the username, last name, first name and email address.

   Here, you need to declare the fields names as they are sent by the identity provider.

   For instance, if your identity provider transmits the connected user's first name in an attribute called "GivenName",
   this is what you will need to type in the "First name" field.

   If for any reason your identity provider doesn't send all of these elements, let the corresponding fields blank. The
   platform will automatically generate them based on other available attributes.

8. Optionally input an access condition.

   The first box is the name of the attribute to check for, and the second one the value of that attribute.
   If you just want to check for the presence of an attribute, without value restriction, just leave the second box blank.

   For instance, if your identity provider sends a list of "Roles" for the users and you want to make sure that only users that have a role can get access, input "Roles" in the first box under "Conditionnal access". If you only want users with the role "DataAccess" to be able to connect to the domain, input "DataAccess" in the second box.

9. Optionally configure automatic single sign on

   The automatic single sign on configuration can be found by navigating to the security page in the domain configuration interface.

.. image:: saml__auto_sso--en.png
    :alt: SAML auto-sso configuration interface in the anonymous access section of the security configuration page

Configure your identity provider
--------------------------------

The configuration of the identity provider is implementation-dependant, but it always consist of importing the service
provider metadata document to enable a identity federation.

You can download the metadata document for your OpenDataSoft domain on
``https://<YOUR DOMAIN>.opendatasoft.com/saml2/metadata.xml``


Using user attributes to filter data
------------------------------------

Through the #attr function, it is possible to filter a dataset records in such a way that the only records returned are the ones that match a value set in the user attributes sent by the IdP. For the following examples, we assume that we have the 3 users, with respective usernames and SAML attributes ``user-country`` and ``user-language`` given by the following table.

.. list-table::
   :header-rows: 1

   * * User
     * user-country
     * user-language
   * * User1
     * France
     * French
   * * User2
     * Canada
     * French
   * * User3
     * United States
     * English


And a dataset with records given by the following table.

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * Worldwide
     * English
     * Hello world
   * * France
     * French
     * Bonjour à tous les Français
   * * Canada
     * French
     * Bonjour à tous les Canadiens
   * * Canada
     * English
     * Hello to all Canadians
   * * United States
     * English
     * Hello to all Americans

We can restrict these users so that they see only messages that apply to their respective countries, with the query ``#attr(country, user-country)``.

User1 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * France
     * French
     * Bonjour à tous les Français

User2 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * Canada
     * French
     * Bonjour à tous les Canadiens
   * * Canada
     * English
     * Hello to all Canadians

User3 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * United States
     * English
     * Hello to all Americans

We can also restrict these users so that they only see messages that are in their respective language, with the query ``#attr(language, user-language)``.

User1 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * France
     * French
     * Bonjour à tous les Français
   * * Canada
     * French
     * Bonjour à tous les Canadiens

User2 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * France
     * French
     * Bonjour à tous les Français
   * * Canada
     * French
     * Bonjour à tous les Canadiens

User3 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * Worldwide
     * English
     * Hello world
   * * United States
     * English
     * Hello to all Americans

Since it is a function of the query language, it can also be grouped with the usual operators, for instance, we can restrict users to only seeing messages that fit their country and languages with the query ``#attr(language, user-language) AND #attr(country, user-country)``.

User1 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * France
     * French
     * Bonjour à tous les Français

User2 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * Canada
     * French
     * Bonjour à tous les Canadiens

User3 sees

.. list-table::
   :header-rows: 1

   * * country
     * language
     * message
   * * United States
     * English
     * Hello to all Americans

.. |icon-world| image:: images/icon_world.png
    :width: 16px
    :height: 16px

.. |icon-id-card| image:: images/icon_id_card.png
    :width: 16px
    :height: 16px
