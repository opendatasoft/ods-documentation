Analyzing actions usage
=======================

Go to the *Analytics > Actions* page.

There are eight indicators :

**Actions**: Frequency and distribution of actions (analyze, geo, search) taken by users based on API calls. It gives you precious information about what your users do and how to serve them better. Remember that, like with every chart on Opendatasoft, you can filter the variables displayed (Analyze, Geo, or Search) by clicking on the legend labels.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-1-en.jpg
        :alt: Actions Usages Activity per type Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-1-fr.jpg
        :alt: Usage Actions Indicateur Activité par type

2. **Total searches**: Number of times somebody searched for a dataset from the catalog or searched in a dataset.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-2-en.jpg
        :alt: Actions Usages Total Searches Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-2-fr.jpg
        :alt: Usage Actions Indicateur Total recherches

3. **Searches with no results**: Number of searches that return no results.

.. admonition:: Note
    :class: note
 
    A search can return no results for different reasons:

    - There are not any resources that match the user's query.
    - The user refines their search with facets and filters that lead to no results.
    - The user does not have the required permissions to see the content.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-3-en.jpg
        :alt: Actions Usages Search without results Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-3-fr.jpg
        :alt: Usage Actions Indicateur Recherches sans résultat

4. **API call sources**: Distribution of the API call per page based on the number of API calls.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-4-en.jpg
        :alt: Actions Usages Actions per Page Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-4-fr.jpg
        :alt: Usage Actions Indicateur Actions par page

5. **Text searches with no result**: Basically, those may be the data users expect to find on your portal.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-5-en.jpg
        :alt: Actions Usages Text searched without result Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-5-fr.jpg
        :alt: Usage Actions Indicateur Textes de recherche sans résultat

6. **Federated activity**: Percentage of API calls made on datasets added on other portals.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-6-en.jpg
        :alt: Actions Usages Federated Activity Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-6-fr.jpg
        :alt: Usage Actions Indicateur Activité fédérée

7. **Bot activity**: Percentage of API calls made by bot. Keep in mind that bots are often useful and can help make your data known to the world.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-7-en.jpg
        :alt: Actions Usages Bot Activity Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-7-fr.jpg
        :alt: Usage Actions Indicateur Activité robots

8. **Distribution of errors**: Number and type of errors generated by failed API calls.

.. ifconfig:: language == 'en'

    .. image:: images/usage__actions-usage-8-en.jpg
        :alt: Actions Usages Requests in error Indicator

.. ifconfig:: language == 'fr'

    .. image:: images/usage__actions-usage-8-fr.jpg
        :alt: Usage Actions Indicateur Requetes en erreur


API calls Errors
----------------

In most cases, you won't be able to do anything. Anyway, we want to be transparent on your users' usage.

.. list-table::
   :header-rows: 1

   * * Error name
     * Error Description
   * * DatastoreError
     * This is a server error, we monitor it real time on our side to avoid it.
   * * InvalidPolygon
     * The defined polygon filter on a geo-query is malformed. For example, it can be a self-crossing polygon like an hourglass.
   * * HTTPError
     * It comes from a federated dataset. It may happen when you change the schema of a dataset when it is already federated on another portal. Always be careful when you update a dataset's schema.
   * * MissingParameters
     * It may happen when you forget the dataset_id in the API console.
   * * UnknownDataset
     * The dataset_id on the URL doesn't exist, or someone has tried to access a dataset without having the right.
   * * ResultWindowTooHigh
     * The search API is paginated with an offset and a response size. You can't access more than ~10k results. If you want more than 10k results, you'll probably want to use the download API.
