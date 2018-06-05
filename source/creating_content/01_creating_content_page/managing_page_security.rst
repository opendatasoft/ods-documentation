Managing the security of a page
===============================

To manage a content page security, go to the Pages section of the back office, in the Security tab of the chosen content page.

.. admonition:: General permissions at domain level have priority over permissions at page level
   :class: caution

   For example, if users have the permission *Browse all pages*, they can access any page, even the private ones in which they are not listed with the allowed users for that page.

Choosing an access policy
-------------------------

Content pages created with the OpenDataSoft platform can either be accessible by anyone allowed on the portal, or restricted to specifically defined users.

To choose the access policy of a content page:

1. Go to Security > Access policy.
2. Click

  - either, the **Public access** button, to let any user access the page, as long as they have access to the portal,
  - or, the **Private access** button, to restrict the access to the page to specically defined users and/or groups of users.

.. admonition:: Information security in public pages
   :class: important

   If a user has access to a content page but which was created with datasets that user isn't allowed to access, all related visualizations will not load. However, the user will be able to read all other information displayed on the content page, such as text.

Managing page permissions for users and groups
----------------------------------------------

Once the access policy of a content page is set, it is possible to manage users and groups permissions on that page.

.. admonition:: Users and groups must be added in the Users & Groups section beforehand, otherwise they can't be found in a page security management
   :class: important

   No matter the access policy or the permission, the latter can be given to users invididually or through groups of users, but both users and groups must already be listed in the Users & Groups section of the back office, where users are invited to the portal and where groups are created.

There are 2 permissions available in the security management of a content page:

- *Browse page*: it allows the user/group of users to access the page and its content. This permission is set by default for all users added to the security management section of the page.
- *Edit page*: it allows the user/group of users to access the back office to edit the content of the page.

These permissions have different impacts depending on the chosen access policy.

- *Browse page* permission:

  - For a private page, the *Browse page* permission gives access to that page, hence the importance of adding users to the security management section, otherwise nobody (except users with the general domain-level *Browse all pages*) can access the page and its content.
  - For a public page, the *Browse page* permission doesn't change much to the access security of that page because it is already accessible by anybody who has access to the domain.

- *Edit page* permission: this permission is relevant for both private and public pages and gives edition rights on the page to any user/group of users added to the security management section of the page and granted with this *Edit page* permission.

Adding and deleting users or groups of users from a page
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Adding users or groups to a page
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Go to Security > User permissions or Security > Group permissions, depending on whether a user or a group will be added.
2. Click the **Add user/group permissions** button at the bottom of the table.
3. Select one or more users/groups of users from the list. A search bar is also available to search a user/group by name.
4. (optional) If all added users/groups are going to be granted the *Edit page* permission as well as the default *Browse page* permission, it is possible to grant that permission now. Otherwise permissions can be granted afterward. To already grant the *Edit page* permission, at the top of the "Add user/group permissions" window, in the "Grant these permissions section":

  a. Click the **Add permission** button.
  b. Click the *Edit page* permission button.

5. Click the **Add user/group permissions** button at the bottom of the Add user/group permissions window.

Deleting users or groups from a page
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Go to Security > User permissions or Security > Group permissions, depending on whether a user or a group will be deleted.
2. In the table, the first column indicates the name of the user or the group of users. The second column indicates the corresponding permission(s). The third column displays the |trash-button| button. Click that |trash-button| button to delete a chosen user/group of users.
3. Click the **Save** button in the top right corner.

Managing page security permissions for users and groups of users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Managing page security permissions can mean 2 things:

- granting a user or a group of users a new page permission,
- or, deleting a page permission for a user or a group of users.

.. admonition:: Permissions can be granted beforehand, when adding the users and groups of users to the page.
   :class: note

   See "Adding users or groups of users to a page" for more information.

Granting page security permissions for users or groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Go to Security > User permissions or Security > Group permissions, depending on whether the new permission must be granted to a user or a group of users.
2. In the table, the first column indicates the name of the user or the group of users. The second column indicates the corresponding permission(s). In this second column, click the **Add permission** button to add a new permission to a chosen user or group of users.
3. Click on the permission to grant.

..  note::
  Since there are only 2 page security permissions, including 1 default permission (*Browse page*), the only permission left to be granted is *Edit page*.

4. Click the **Save** button in the top right corner.

Deleting page security permissions for users or groups
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

1. Go to Security > User permissions or Security > Group permissions, depending on whether the new permission must be deleted for a user or a group of users.
2. In the table, the first column indicates the name of the user or the group of users. The second column indicates the corresponding permission(s). In this second column, click on a chosen permission to delete it.

..  note::
  It isn't possible to delete the *Browse page* permission, the only page permission that can be deleted is *Edit page*. To prevent a user from accessing a page, the page must be private (see Choosing an access policy) and the user must be deleted from the page security (see Deleting users or groups from a page).

3. Click the **Save** button in the top right corner.


.. |trash-button| image:: images/page_security_trash-button.png
    :width: 43px
    :height: 31px
