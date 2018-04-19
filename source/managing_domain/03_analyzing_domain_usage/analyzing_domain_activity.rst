Analyzing domain activity
=========================

Go to the *Analytics > Backoffice* page.

Backoffice Analytics
--------------------

The Backoffice analytics allows the domain administrator to monitor domain configuration activity.

There are seven indicators :

1. **Actions**: Frequency and distribution of administrative actions (edit and publish datasets or pages, add users to the domain etc). Gives you precious information about what your users do and how they spend their time on the platform. Also remember that like with every charts on OpenDataSoft you can filter the variables displayed by clicking on the legend labels.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-1-en.jpg
        :alt: Actions

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-1-fr.jpg
          :alt: Usage Data Indicateur Popularité

2. **Number of users**: Number of users that had an activity on the platform during the period.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-2-en.jpg
        :alt: Number of users

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-2-fr.jpg
        :alt: Nombre d'utilisateurs

3. **Actions by users**: Number of actions by users during the period.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-3-en.jpg
        :alt: Actions by users

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-3-fr.jpg
        :alt: Actions par utilisateurs

4. **Top 5 users**: Most active users during the period. Note that every user activity is broke down by action type.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-4-en.jpg
        :alt: Top 5 users

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-4-fr.jpg
        :alt: Top 5 utilisateurs

5. **Top 5 modified datasets**: Most modified datasets. Those are the datasets that requested the more work.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-5-en.jpg
        :alt: Top 5 modified datasets

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-5-fr.jpg
        :alt: Top 5 jeux de données modifiés

6. **Top 5 pages**: Most modified pages. Those are the pages that requested the more work.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-6-en.jpg
        :alt: Top 5 pages

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-6-fr.jpg
        :alt: Top 5 pages

7. **Distribution of actions**: Distribution of the activity based on the number of actions.

.. ifconfig:: language == 'en'

    .. image:: images/usage__backoffice-usage-7-en.jpg
        :alt: Distribution of actions

.. ifconfig:: language == 'fr'

    .. image:: images/usage__backoffice-usage-7-fr.jpg
        :alt: Répartition des actions




Activity log dataset
--------------------

As in the other analytics pages, you can access the full activity log dataset at the bottom of the dashboard by clicking "See source data".

The activity log dataset contains the following fields.

.. list-table::
   :header-rows: 1

   * * Field name
     * Description
   * * ``timestamp``
     * Action timestamp
   * * ``domain_id``
     * Domain ID
   * * ``user_id``
     * Identifier of the event owner
   * * ``dataset_id``
     * Id of the dataset if the action is relative to a specific dataset
   * * ``username``
     * Name of the user the action has an effect on
   * * ``action``
     * Action name (one of **publish_dataset**, **add_dataset**, **edit_dataset**, **delete_dataset**)
   * * ``group_id``
     * Identifier of the group concerned by the action
   * * ``page_id``
     * Identifier of the page concerned by the action
   * * ``diff``
     * Difference introduced by the action (for example a new permission added to a user)
   * * ``map_id``
     * Identifier of the map
   * * ``reuse_title``
     * Title of the reuse
   * * ``subdomain_id``
     * Identifier of the subdomain where the action was made
