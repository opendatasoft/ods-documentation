Managing security
=================

You can manage access, visibility on data, and edition permissions on a per dataset basis, on each dataset publishing interface. 
The first condition for a user to access a dataset is to have access to the domain as a whole.

.. image:: images/publish-data_security-tab.png


Dataset exploration permissions
-------------------------------


Dataset access rights
~~~~~~~~~~~~~~~~~~~~~

If you want anyone with access to your domain to be able to explore the dataset, you must uncheck the **Access restricted to allowed users and groups** option.

.. image:: images/security_access-restricted.png

.. admonition:: note
   :class: note

   You can configure the **Access restricted to authorized users and groups** while creating a dataset.

In this case, you can apply general filters for all people that access your dataset (see below for filter configuration). That filters will apply to all people that do not fall into the users and groups explicitly listed for this dataset. If a user is matched in the specific list of users, the general filters **will not apply**.

You may also want to restrict the availability of the dataset to a defined list of persons explicitly listed for this dataset. In this case, you want to check the Access restricted to allowed users and groups and add the users and groups that can access the list accessible below in the interface.


Data visibility filters
~~~~~~~~~~~~~~~~~~~~~~~

For each category of person (anyone, listed user, user in a listed group) that can see the dataset, you can set rules to restrict the data they really see.

.. ifconfig:: language == 'en'

    .. image:: images/security__filters--en.png
        :alt: Available data filter options

.. ifconfig:: language == 'fr'

    .. image:: images/security__filters--en.png
        :alt: Options disponible pour le filtrage des données

You have three different options available that you can combine.
First, you can decide whether the data is accessible or not using the Data is visible check box. If you clear this check box, the user will only be able to access the information (metadata) part of the dataset, including the list of fields.
If you restrict the visibility of the data, you should explain to your user how they can access the data, either by contacting the domain administrators or going to an external billing system or any other case you can think about.

.. ifconfig:: language == 'en'

    .. image:: images/security__data-visibility-option--en.png
        :alt: Option for data visibility
        :width: 30%
        :align: center

.. ifconfig:: language == 'fr'

    .. image:: images/security__data-visibility-option--fr.png
        :alt: Option pour la visibilité des données
        :width: 30%
        :align: center

If you keep the data visible, the other two filters will apply. They allow you to define what fields and records that will be visible.

With the list of fields, you can keep columns private to some users, for example for columns that are used for internal data management on an open data dataset.

.. ifconfig:: language == 'en'

    .. image:: images/security__column-visibility-option--en.png
        :alt: Option for column visibility
        :width: 50%
        :align: center

.. ifconfig:: language == 'fr'

    .. image:: images/security__column-visibility-option--fr.png
        :alt: Option pour la visibilité des colonnes
        :width: 50%
        :align: center

The query filter permits you to restrict the rows visible for users. It uses the same query language as the search on dataset. This filter will be applied before the user crafted queries and are not visible by the end-user that consumes the data.

.. ifconfig:: language == 'en'

    .. image:: images/security__query-filter--en.png
        :alt: Query filters
        :width: 70%
        :align: center

.. ifconfig:: language == 'fr'

    .. image:: images/security__query-filter--fr.png
        :alt: Requête de filtrage
        :width: 70%
        :align: center


Management rights on the dataset
--------------------------------

The dataset management (edition and publishing) is only accessible to the users listed, either explicitly or through groups, in the security configuration of the dataset and that are given the edit or publish rights. Domain administrators also have the right to edit all datasets.
Domain administrators also have the rights to edit all datasets.

.. ifconfig:: language == 'en'

    .. image:: images/security__management-rights--en.png
        :alt: Management rights for users
        :width: 50%
        :align: center

.. ifconfig:: language == 'fr'

    .. image:: images/security__management-rights--fr.png
        :alt: Droits de gestion
        :width: 50%
        :align: center
