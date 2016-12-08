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
