Authenticating users
====================

Configuring your domain's security policy
-----------------------------------------

Domain access and default security policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. ifconfig:: language == 'en'

    .. image:: users__security-model--en.png
        :alt: Security Model

.. ifconfig:: language == 'fr'

    .. image:: users__security-model--fr.png
        :alt: Modèle de sécurité

Check the option **allow anonymous access** if you want to let people access your domain without having to log in.
Anonymous users will only be able to access non restricted datasets. This makes it possible to mix on the single domain
a public facing catalog and a private catalog that can only be accessed by authorized users.

Datasets access can be set to be *restricted* or *not restricted*. A *restricted* dataset can only be accessed by
authorized users (users who are in the access list of the dataset, see below). Check the option
**restrict new datasets by default** if you want newly created datasets to be accessed only by authorized users.

The **landing page for anonymous users** can be set to any content page created on the domain. It makes it possible to
host a splash screen or to disclose content to anonymous users from a private domain.

This section also allows you to define the **default permissions for new users** (see below for a detailed description
of users permissions).

Domain access list
~~~~~~~~~~~~~~~~~~


.. ifconfig:: language == 'en'

    .. image:: users__security-users--en.png
        :alt: Security Users

.. ifconfig:: language == 'fr'

    .. image:: users__security-users--fr.png
        :alt: Permissions des utilisateurs


The domain access list are made of users and groups. Users' scope is platform wide (this means that a user can be
associated with more than one domain) while groups' scope is domain wide (groups are not shared among domains).

The effective permissions of a user are the union of the user's own permissions and of the permissions of the groups
the user belongs to. This means that if a user does not have administrative rights set while they belong to a group
which has administrative rights, the user will effectively be given administrative rights.

There are two categories of **permissions**: standard permissions and administative permissions. Permissions can be
attributed to users and groups.

* Standard permissions
    * The user may create new datasets and edit them
    * The user may publish their datasets
    * The user may manage the security settings of their datasets

* Administrative permissions
    * The user may browse all the datasets on the domain
    * The user may edit all the datasets on the domain
    * The user may create and edit content pages on the domain
    * The user may edit and moderate reuses on the domain
    * The user may edit domain properties

Authenticating users with signup
--------------------------------

As an administrator, you can add users to your domain directly through your users management screen. You can also
activate a registration workflow to let users initiate the registration process themselves.

#### Manually adding users to the domain

To do so, simply hit the **add users** button. You can then either search for an existing user on the platform
(remember that user management is platform wide) or simply invite new users by entering their email addresses. New
users will receive an email asking them to validate their account.

.. ifconfig:: language == 'en'

    .. image:: users__signup--en.png
        :alt: Registration workflow

.. ifconfig:: language == 'fr'

    .. image:: users__signup--fr.png
        :alt: Processus d'enregistrement

It is also possible to configure the registration workflow. This workflow allows users to sign up by themselves. A
registration can either be manually or automatically validated, depending on the configuration. A set of fields allows
you to customize the signup page.

Authenticating users with SAML
------------------------------

The OpenDataSoft platform supports the SAMLv2 standard.

This allows to create identity federation between your domain, which will act as a service provider, and a identity
provider that you can configure.

This federation allows users of your domain to connect to the platform using the identity provider, and if they have
one, reuse their active security context to create a SSO mechanism.

Register and configure an identity provider
-------------------------------------------

1. Navigate to the signup page in the domain configuration interface.

.. ifconfig:: language == 'en'

    .. image:: users__saml-signup--en.png
        :alt: Signup configuration page

.. ifconfig:: language == 'fr'

    .. image:: users__saml-signup--fr.png
        :alt: Page de de configuration des inscriptions au domaine

2. Check "Allow access for SAML users"

.. ifconfig:: language == 'en'

    .. image:: users__saml-config--en.png
        :alt: SAML IDP configuration interface

.. ifconfig:: language == 'fr'

    .. image:: users__saml-config--fr.png
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
