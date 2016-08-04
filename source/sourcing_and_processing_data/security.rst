Managing Security
=================

.. ifconfig:: language == 'en'

    .. image:: security__dataset--en.jpg
        :alt: Access list

.. ifconfig:: language == 'fr'

    .. image:: security__dataset--fr.png
        :alt: Liste d'accès


As seen above, a **restricted** dataset can only be accessed by users defined in the access list of the dataset, users
belonging to a group defined in the access list of the dataset or users with special administrative permissions.

Users and groups can easily be added to the access list of a dataset.

If a user belongs to the access list of a dataset (or to a group which belongs to the access list of a dataset), they
may access this dataset in the exploration console or through APIs. Two additional permissions are also available:

* The user may edit the dataset
* The user may publish the dataset

.. ifconfig:: language == 'en'

    .. image:: security__filters--en.jpg
        :alt: Security filters

.. ifconfig:: language == 'fr'

    .. image:: security__filters--fr.png
        :alt: Filtres de sécurité

**Filters** may be used to further refine the permissions of a given user on a dataset. It is possible to restrict the
fields a user can see by using the **available fields** selector. And it is possible to restrict the set of records a
user can see by using the **filter query** input. The filter query shall contain any valid query language expression.

For non restricted datasets, filters defined in the **default security** section apply to anonymous users or to
authenticated users who do not belong to the access list.

The effective filter of a user belonging to the access list of a dataset is the union of the users's filters and the
filters of the groups the user belongs to.

