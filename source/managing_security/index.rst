Managing security
=================

OpenDataSoft provides a full stack security layer with users, groups and roles management. Using this security layer,
you can restrict the access to your dataset's catalog as well as to the content of a single dataset.

An OpenDataSoft domain can be kept private or can be made public. When set to private, a domain can only be accessed by
users defined in the access list of the domain. When set to public, a domain can be accessed by anyone (this however
does not mean that any user will be able to browse the entire domain catalog).

The domain access list is made of users and groups of users to which permissions are attached. Two different set of
permissions can be defined: permissions related to regular users and permissions related to admin users (those guys
with super powers). The permissions make it possible to allow users to read the dataset catalog, create and publish
new datasets or even visualize and modify any dataset of the domain.

Then, at the dataset level, it is possible to even further refine the security model by giving specific access to users
or groups to either view or modify the dataset. It is also possible to define advanced filters so that a given user will
only see some fields and/or a subset of the dataset records.

.. toctree::
   :maxdepth: 2

   users
   permissions
   groups
   access_requests
