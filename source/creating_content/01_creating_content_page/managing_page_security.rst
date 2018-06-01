Managing the security of a page
===============================

To manage a content page security, go to the Pages section of the back office, in the Security tab of the chosen content page.

.. admonition:: General permissions at domain level have priority over permissions at page level
   :class: caution

   For example, if users have the permission "Browse all pages", they can access any page, even the private ones in which they are not listed with the allowed users for that page.

Choosing an access policy
-------------------------

Content pages created with the OpenDataSoft platform can either be accessible by anyone allowed on the portal, or restricted to specifically defined users.

To choose the access policy of a content page:

1. Go to Security > Access policy.
2. Click

   a. either, the "Public access" button, to let any user access the page, as long as they have access to the portal,
   b. or, the "Private access" button, to restrict the access to the page to specically defined users and/or groups of users.

.. admonition:: Information security in public pages
   :class: important

   If a user has access to a content page but which was created with datasets that user isn't allowed to access, all related visualizations will not load. However, the user will be able to read all other information displayed on the content page, such as text.

Managing page permissions for users and groups
----------------------------------------------

Once the access policy of a content page is set, it is possible to manage users and groups permissions on that page.

.. admonition:: Users and groups must be added in the Users & Groups section before being used in a page security management
   :class: important

   No matter the access policy or the permission, the latter can be given to users invididually or through groups of users but both users and groups must already be listed in the Users & Groups section of the back office, where users are invited to the portal and where groups are created.

There are 2 permissions available in the security management of a content page:

- Browse page: it allows the user/the group of users to access the page and its content. This permission is set by default for all users added to the security management section of the page.
- Edit page: it allows the user/the group of users to access the back office to edit the content of the page.

These permissions have different impacts depending on the chosen access policy.

- "Browse page" permission:

  - For a private page, the "Browse page" permission gives access to that page, hence the importance of adding users to the security management section, otherwise nobody (except users with the general domain-level "Browse all pages") can access the page and its content.
  - For a public page, the "Browse page" permission doesn't change much to the access security of that page because it is already accessible by anybody who has access to the domain.

- "Edit page" permission: this permission is relevant for both private and public pages and give edition rights on the page to any user/group of users added to the security management section of the page and granted with this "Edit page" permission.

Adding users or groups of users to a page security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To add users to a page security:

1. Go to Security > User permissions.
2. Click the "Add user permissions" button.
3. Select one or more users from the list. A search bar is also available to search a user by name.
4. (optional) If all added users are going to be granted the "Edit page" permission as well as the default "Browse page" permission, it is possible to grand that permission now. Otherwise permissions can be granted afterward. To already grant the "Edit page" permission, at the top of the "Add user permissions" window, under "Grant these permissions":

  4.a. Click the Add permission button.
  4.b. Click the Edit page permission button.

5. Click the "Add user permissions" button at the bottom of the "Add user permissions" window.

To add groups of users to a page security: follow the "add users to a page security" procedure but go to Security > Group permissions instead.

Managing permissions for users and groups of users added to a page security
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Managing permissions can mean 2 things:

- granting a user or a group of users a new permission,
- or, deleting a user's or a groups of users permission.

.. admonition:: Permissions can be granted beforehand, when adding the users and groups of users.
   :class: note

   See "Adding users or groups of users to a page security" for more information.

To grand a new permission:

...

To delete a permission:

...
