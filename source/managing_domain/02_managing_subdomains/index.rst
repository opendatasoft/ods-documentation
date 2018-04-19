Managing subdomains
===================

Subdomains management lets OpenDataSoft customers manage autonomously their own set of domains.
A subdomain shares the exact same characteristics as a domain, except that its quotas can be managed from the parent domain (root domain).

Subdomains are made available to OpenDataSoft's customers through a specific, paying, license option.

Subdomains can be used for different purposes:

* A private company with different business units wanting to manage their own OpenDataSoft instance (domain).
* A local government sustaining an Open Data policy at a regional scale, providing its local cities with an on-the-shelf Open Data platform.

The subdomain creation is managed from the parent domain. Once created, the subdomain is a full-fledged domain and can have its own look & feel, datasets, content pages,
and security (users and groups).

The parent domain is able to "push" content pages and datasets to subdomains :doc:`using the distribution feature </managing_domain/02_managing_subdomains/distribute>`,
and is also able to easily gather data from the subdomains (provided the parent domain
has access to the subdomain) :doc:`using the harvesters feature </publishing_data/02_harvesting_a_catalog/harvesters/ods>`.

.. toctree::
   :maxdepth: 2

   create
   distribute
   quotas
