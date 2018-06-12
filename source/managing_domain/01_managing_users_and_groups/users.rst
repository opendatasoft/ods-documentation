Managing users
==============

Now that you've set up your :doc:`portal's security policy </configuring_domain/01_managing_security/portal>`, people are registering and becoming full-fledged
users. Unless your portal is closed to anonymous users, this new status is not changing anything for them. They can
still see the same data and a subject to the same quotas as before.

Permissions
-----------

What is changing is that you can now give them permissions extending what they can do. You can do so either on the
users' index page or directly on the single user management page, both accessible through the
**Users & groups / Users** section in your backoffice.

.. ifconfig:: language == 'en'

    .. image:: images/users__index--en.png
        :alt: The list of your portal's users

.. ifconfig:: language == 'fr'

    .. image:: images/users__index--fr.png
        :alt: The list of your portal's users

Permissions each affect an independent part of your portal so that by looking at a user's permissions list you know
exactly what he/she can do. Each permission has its own category, symbolized by an icon and a tag color.


.. ifconfig:: language == 'en'

    .. image:: images/users__permissions--en.png
        :alt: All available permissions, each with a category icon and color

.. ifconfig:: language == 'fr'

    .. image:: images/users__permissions--fr.png
        :alt: All available permissions, each with a category icon and color

Dataset permissions
~~~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Permission
     * Description
   * * Browse all datasets
     * The user may access all data on all published datasets, regardless of any security parameters set for this user or the datasets (for example, the user can access all restricted datasets).
       This permission on its own doesn't grant access to the back office.
   * * Create new datasets
     * The user may create new datasets (but not publish them, to do so the Publish own datasets permission is required), within the limits defined by the quotas.
       **This permission grants access to the Catalog section of the back office.**
   * * Edit all datasets
     * The user may edit all existing datasets.
       **This permission grants access to the Catalog section of the back office.**
   * * Manage own datasets' security
     * The user may manage security options and parameters (users able to access the datasets, visible records etc.) for the datasets they have to permission to edit.
       This permission on its own doesn't grant access to the back office.
   * * Publish own datasets
     * The user can publish or republish the datasets they have the permission to edit.
       This permission on its own doesn't grant access to the back office.

These are general permissions that apply to a user with regard to the portal, but user can also get
:doc:`permissions for individual datasets </publishing_data/09_managing_dataset_security/security>`.

Page permissions
~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Permission
     * Description
   * * Create new pages
     * The user may create new pages.

       **This permission grants access to the Pages section of the back office.** It also allows to manage assets.
   * * Edit all pages
     * The user may edit and delete all existing pages.

       **This permission grants access to the Pages section of the back office.** It also allows to manage assets.
   * * Browse all pages
     * The user may access all pages, regardless of any security parameters set for this user or the pages (for example, the user can access all private pages).
       This permission on its own doesn't grant access to the back office.
   * * Manage own page's security
     * The user may manage security options and parameters (:doc:`access policy, page-level permissions on defined users and groups</creating_content/01_creating_content_page/managing_page_security>`) for the pages they have the permission to edit.
       This permission on its own doesn't grant access to the back office.


Other permissions
~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Permission
     * Description
   * * Edit domain properties
     * The user may configure all options and parameters in the Assets, Look & feel (except for the Theme subsection), Users & groups and Configuration sections of the back office.

       **This permission grants access to the Assets, Look & feel (Branding, Data visualizations, Navigation and Dataset themes), Users & groups, Configuration and License sections of the back office.**
   * * Manage the domain theme
     * The user may configure all options and parameters in the Theme and Dataset themes subsections of the Look & feel section of the back office. To access the other subsections (Branding, Data visualizations and Navigation), the Edit domain properties permission is required.

       **This permission grants access to the Look & feel (Theme and Dataset themes) section of the back office.** It also allows to manage assets.
   * * Browse analytics
     * The user may access all analytics dashboards, both at the `domain level </monitoring_audience>`_ and at the dataset level.

       **This permission grants access to the Analytics section of the back office.**
   * * Manage all reuses
     * The user may see, approve, reject and delete all reuse submissions on the portal.

       **This permission grants access to the Reuses section of the back office.**
   * * Manage all subdomains
     * The user may edit, create and delete all subdomains (:doc:`if subdomains are enabled on the portal </managing_domain/02_managing_subdomains/index>`).

       **This permission grants access to the Subdomain section of the back office.**

Quotas
------

In order to avoid having a user use up all of your license usage quotas, you can
:doc:`set up default quotas for users </managing_domain/04_monitoring_license_and_quotas/quotas>`. However you can override the general quotas given to everybody with
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

    .. image:: images/users__quotas--en.png
        :alt: The override form for a quota

.. ifconfig:: language == 'fr'

    .. image:: images/users__quotas--fr.png
        :alt: The override form for a quota
