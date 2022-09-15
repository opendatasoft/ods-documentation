Configure a shared catalog
=================================

.. admonition:: Important
   :class: important

   Shared Catalogs are available with the Ultimate Plan. Contact your sales representative more information about our plans.


What is a Shared Catalog and what is it for?
--------------------------------------------

What is a Shared Catalog?
~~~~~~~~~~~~~~~~~~~~~~~~~

A Shared Catalog is a combination of the public datasets from two or more different ODS domains. The resulting combined catalog can then be configured to be visible at each of the individual domains, or else be its own separate, shared domain.

Why use a Shared Catalog?
~~~~~~~~~~~~~~~~~~~~~~~~~

A Shared Catalog is a good idea if you want to group all of your data as part of a larger organization or initiative. 

For example, a region can find it useful to bring together the data from all of its different administrative levels—the region, its states or departments, metropolitan areas, cities and towns, etc. This allows users to find all the relevant data for that region in one easy location.

Configuring the Shared Catalog
------------------------------

How to enable shared catalogs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To enable Shared Catalogs, your portal must be public and must be part of the ODS Data Hub. Also note that some actions must be performed by your CSM.

   * To make your portal public, in your back office, go to ``Configuration`` → ``Security``, and toggle the **Portal access** option to **Public portal**. (see :doc:`configuring your portal's general security policy </configuring_domain/01_managing_security/portal>`)
   * Make sure your portal is part of the `ODS Data Hub <https://academy.opendatasoft.com/exploiter-notre-reseau-de-donnees>`_ (check with your CSM if you’re not sure).
   * Define the **unique identifier for your shared catalog**. To perform this step you will need to contact your CSM. The identifier is the same for all the portals part of your shared catalog, so if a shared catalog was already created you must use the existing identifier.

Choosing the default catalog for your domain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once the shared catalog is activated on your workspace, you have two different catalogs:

1. Your **local catalog** containing your own public and restricted datasets
2. Your **shared catalog** containing your public datasets and all the public datasets of the portals using this shared catalog

By default, your local catalog is visible at your domain’s URL ending with ``/explore/``, but you can change this to show the shared catalog instead.

**Changing the default catalog needs to be performed by ODS. To make the shared catalog your default catalog, please contact your CSM.**

Using the Shared Catalog
------------------------

How to access to your local and shared catalogs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remember that whatever your default catalog, you can always access the local and shared catalogs using their specific URLs:

- Your **local catalog** is always available at your domain’s URL ending with ``/explore/?source=domain``
- The **shared catalog** is always visible at your domain’s URL ending with ``/explore/?source=shared``

.. admonition:: Important
   :class: important

   Remember, only your public datasets are part of a shared catalog. Therefore, when you're browsing the shared catalog on your own domain, you will not see your own private datasets, no matter what permissions you have for your private datasets.

What’s different when I’m using the shared catalog feature?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* **Your portal’s appearance**

Using the shared catalog option does not change the appearance of your datasets, nor change what information is visible in them. 

* **The order your datasets are displayed**

* **Your local public datasets are always displayed first**. This is to ensure that your own datasets are promoted and remain visible. No matter how your portal’s datasets are filtered (alphabetically, by last modified, etc.), your local public datasets are displayed first, before the shared datasets that might otherwise come first.

* **Metadata**

The metadata ``shared_catalog`` (visible while using the ODS Management APIs) is populated with the value of the unique identifier of the shared catalog.

* **API Explore V2**

With the `API Explore V2 <https://help.opendatasoft.com/apis/ods-explore-v2/>`_ , ``/api/v2/catalog/dataset`` allows you to see the local catalog, and `/api/v2/shared/datasets` allows you to see the shared catalog.