SAML support
============

The OpenDataSoft platform supports the SAMLv2 standard.

This allows to create identity federation between your domain, which will act as a service provider, and a identity
provider that you can configure.

This federation allows users of your domain to connect to the platform using the identity provider, and if they have
one, reuse their active security context to create a SSO mechanism.

Register and configure an identity provider
-------------------------------------------

1. Navigate to the signup page in the domain configuration interface.

.. ifconfig:: language == 'en'

    .. image:: saml__signup--en.png
       :alt: Signup configuration page

.. ifconfig:: language == 'fr'

    .. image:: saml__signup--fr.png
       :alt: Page de de configuration des inscriptions au domaine

2. Check "Allow access for SAML users"

.. ifconfig:: language == 'en'

    .. image:: saml__config--en.png
       :alt: SAML IDP configuration interface

.. ifconfig:: language == 'fr'

    .. image:: saml__config--fr.png
       :alt: Interface de configuration de fournisseur d'identité SAML

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
