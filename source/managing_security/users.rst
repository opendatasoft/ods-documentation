Managing users
==============

Now that you've set up your :doc:`portal's security policy <portal>`, people are registering and becoming full-fledged
users. Unless your portal is closed to anonymous users, this new status is not changing anything for them. They can
still see the same data and a subject to the same quotas as before.

Permissions
-----------

What is changing is that you can now give them permissions extending what they can do. You can do so either on the
users' index page or directly on the single user management page, both accessible through the
**Users & groups / Users** section in your backoffice.

.. ifconfig:: language == 'en'

    .. image:: users__index--en.png
        :alt: The list of your portal's users

.. ifconfig:: language == 'fr'

    .. image:: users__index--fr.png
        :alt: The list of your portal's users

Permissions each affect an independent part of your portal so that by looking at a user's permissions list you know
exactly what he/she can do. Each permission has its own category, symbolized by an icon and a tag color.


.. ifconfig:: language == 'en'

    .. image:: users__permissions--en.png
        :alt: All available permissions, each with a category icon and color

.. ifconfig:: language == 'fr'

    .. image:: users__permissions--fr.png
        :alt: All available permissions, each with a category icon and color

Dataset permissions
~~~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Permission
     * Description
   * * Browse all datasets
     * The user may access all data on all published datasets, regardless of any security parameters even specific
       rules set just for this user.
   * * Create new datasets
     * The user may create new datasets (but not publish them), within the limits defined by the quotas.

       **Grants access to the catalog section of the backoffice**
   * * Edit all datasets
     * The user may edit all existing datasets.

       **Grants access to the catalog section of the backoffice**
   * * Manage own datasets' security
     * The user gets access to the security section of the dataset edition page and is able to set rules defining who
       can access which records within the datasets he/she can edit.
   * * Publish own datasets
     * The user can publish or republish the datasets he/she can edit.

These are general permissions that apply to a user with regard to the portal, but user can also get
:doc:`permissions for individual datasets </sourcing_and_processing_data/security>`.


Other permissions
~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Permission
     * Description
   * * Edit domain properties
     * The user may edit all properties in the **Look & feel**, **Users & groups** and **Configuration** sections of
       the backoffice. He/she also gets access to the **Analytics** and **Assets** sections.

       **Grants access to the catalog section of the backoffice**
   * * Edit all pages
     * The user may create, edit and delete all pages. He/she can also manage assets.

       **Grants access to the catalog section of the backoffice**
   * * Manage all reuses
     * The user may see, approve, reject and delete all reuse submissions on the portal.

       **Grants access to the catalog section of the backoffice**
   * * Manage all subdomains
     * :doc:`If subdomains are enabled on the portal </managing_subdomains/index>`, then the user may edit, create and
       delete all subdomains.

       **Grants access to the catalog section of the backoffice**

Quotas
------

In order to avoid having a user use up all of your license usage quotas, you can
:doc:`set up default quotas for users <quotas>`. However you can override the general quotas given to everybody with
specific values tailored to a single profile for each of the 3 quota types.

Since quotas can also be defined at the group level, users are inheriting from 3 settings.

* license quotas (for the whole portal)
* default quotas (for each user indifferently)
* group quotas (for each member)

The value that applies to the given is calculated as such:

* If there is a specific value for the user, this value applies.
* If there is no specific value for the user, but the user is member of at least one group with a specific value, then
  the maximum of all group values apply.
* If there no specific value and no group value, then the default security value for non-anonymous users applies.

The applied values is then of course capped at the license value.

Since this is a bit difficult to remember, the interface includes a calculator showing you the license, default and
group values and dynamically computes the effective quota depending on the specific value you're setting up.

.. ifconfig:: language == 'en'

    .. image:: users__quotas--en.png
        :alt: The override form for a quota

.. ifconfig:: language == 'fr'

    .. image:: users__quotas--fr.png
        :alt: The override form for a quota




