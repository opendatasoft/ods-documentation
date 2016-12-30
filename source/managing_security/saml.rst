Federate identity with SAML
===========================

Some organizations already have a user directory service that manages their users authentication and permission, and see little value in using the built in OpenDataSoft user management features. In order to address this use case, the OpenDataSoft platform supports external Identity Providers (IdP) through the SAMLv2 standard. This allows for setting up an identity federation between your domain, which will act as a service provider, and this IdP. This federation allows users of your domain to connect to the platform using the identity provider, and if they have one, reuse their active security context to create a SSO mechanism. Such a federation permits user access through 2 different modes: the transient mode, where users are created on the fly when validated by the IdP, and the linked mode, where an OpenDataSoft user account is linked to a SAML identity through a set of properties known by the IdP. Those two modes can coexist on a domain, but a single user can only connect through one mode.

Transient mode
--------------

In the transient mode, every user that has a user account on the IdP trusted by a domain, and doesn't have a OpenDataSoft user account can connect through SAML. A transient user will be created for the user, based on the parameters defined in the account, email, first name and last name mapper settings. These transient users have the permission to explore the public datasets of the domain. Extra permissions can be given to these users by using the generic ``SAML users`` group. Transient users may not be assigned any special permissions on individual datasets or added to groups (other than the ``SAML users`` group, of which they are automatic members).

Linked mode
-----------

In the linked mode, users that have an OpenDataSoft user account can link this account to particular values of the set of parameters defined in the account mapper setting. After the link has been established, users who log in through SAML will be logged to their OpenDataSoft user account. Linked users may be assigned the same permissions and added to groups just like normal users (as they are normal users). They are also automatic members of the ``SAML users`` group. This mode allows a more fine-grained permission control, while retaining most of the advantages of the transient mode. The only drawback is the necessity for users to create an account on the domain before linking it to their SAML identity. There are two method for linking an OpenDataSoft user account. The first one is to click on ``Link your account to a SAML account on this domain`` in the identity tab of the user account settings. 

.. image:: saml__link--en.png
    :alt: "Link your account to a SAML account on this domain" link in the identity tab of the user account settings

The other method is to create the link during the user account creation process, by clicking the link to complete the registration through SAML. This actually speeds up the user account creation process and allows for a quick account linking.

.. image:: saml__validation-link--en.png
    :alt: Account registration in SAML enabled domains

Register and configure an identity provider
-------------------------------------------

1. Navigate to the signup page in the domain configuration interface.

.. image:: saml__signup--en.png
    :alt: Signup configuration page

2. Check "Allow access for SAML users"

.. image:: saml__config--en.png
    :alt: SAML IDP configuration interface

3. Paste your identity provider metadata document in the "IDP metadata document" field.

4. If you are using Microsoft Azure Active Directory as an IDP, check the related checkbox.

5. Input the set of attributes sent by the IDP that uniquely define a user.

   If the users are defined by their NameID and the NameID format used by your IdP is not transient, there is no need to fill anything.

   For instance, if your users are defined by the attribute "FirstName" and "LastName" transmitted by your IdP, first input "FirstName" in the box and press enter, then "LastName" and press enter again.

6. Input the attributes mappings for the username, last name, first name and email address.

   Here, you need to declare the fields names as they are sent by the identity provider.

   For instance, if your identity provider transmits the connected user's first name in an attribute called "GivenName",
   this is what you will need to type in the "First name" field.

   If for any reason your identity provider doesn't send all of these elements, let the corresponding fields blank. The
   platform will automatically generate them based on other available attributes.

7. Optionally input an access condition.

   The first box is the name of the attribute to check for, and the second one the value of that attribute.
   If you just want to check for the presence of an attribute, without value restriction, just leave the second box blank.

   For instance, if your identity provider sends a list of "Roles" for the users and you want to make sure that only users that have a role can get access, input "Roles" in the first box under "Conditionnal access". If you only want users with the role "DataAccess" to be able to connect to the domain, input "DataAccess" in the second box.

Configure your identity provider
--------------------------------

The configuration of the identity provider is implementation-dependant, but it always consist of importing the service
provider metadata document to enable a identity federation.

You can download the metadata document for your OpenDataSoft domain on
``https://<YOUR DOMAIN>.opendatasoft.com/saml2/metadata.xml``
