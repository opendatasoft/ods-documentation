Managing quotas
===============

Your portal license
-------------------

Before diving into which quotas exist on OpenDataSoft portals, it is important to introduce the license topic. A license applies to each and every OpenDataSoft portal. It is a contract between OpenDataSoft and the portal owners, defining how much data can be injected into the portal and the consumption of this data.

For example, freemium portals can have up to 5 datasets, each having at most 20000 records.

Your license defines 4 global limits on your portal: the first one puts an upper limit on the consumption of the data and the others regulate the amount of data you can inject into the portal.

* **API calls quota** limits the number of requests made to the data within a given timeframe (usually within a month)

.. important::

   The number of API calls measure can be a bit difficult to wrap his/her head around since this is a very technical measure
   of the activity. But it can be summarised as such: everytime somebody accesses your portal, for example the datasets
   catalog page, the interface will make requests to the portal for the filters values, for the 10 first datasets then
   the 10 next ones etc. Each of these requests is an API call and counted within the quota.

   API calls are therefore made by visitors on your portal, but also by developers using the API to retrieve the data
   you published and dashboards hosted outside of your portal.

* **Data size quota** limits the total size of the data in datasets in the domain
* **Datasets quota** constraints the total number of currently published datasets, for local datasets on the one hand and for federated datasets on the other hand
* **Records quota** limits the total number of records within published datasets and also limits the maximum number of records per dataset

You can see these quotas and check any information related to your license, under the **License** section of the back office.

.. localizedimage:: images/quotas__license_1.png
        :alt: Current status of your license quotas
.. localizedimage:: images/quotas__license_2.png
        :alt: Current status of your license quotas

Setting defaults limitations on users
-------------------------------------

Since your portal has global upper limits set, you want to avoid having anybody use all of the license quota just by
him/herself. You can therefore set general limits on users and if your portal is open to anonymous users, set a
different limit for them. You can also set a global limit for all anonymous users to be sure that they won't eat up all
of your usage quota.

You'll be able to set these limits in the **Security** subsection of the **Configuration** section of your portal's
backoffice.

When a user makes a request (be it an API call, a dataset creation of the publication of a dataset), we make sure
he/she isn't running into the default limit set for him/her and isn't going over the global portal limit. Were it the
case, a message would pop-up telling him/her so.

.. ifconfig:: language == 'en'

    .. image:: images/quotas__default-api-calls--en.png
        :alt: General API calls limit

.. ifconfig:: language == 'fr'

    .. image:: images/quotas__default-api-calls--fr.png
        :alt: General API calls limit

.. ifconfig:: language == 'en'

    .. image:: images/quotas__default-data-volume--en.png
        :alt: General data volume limits

.. ifconfig:: language == 'fr'

    .. image:: images/quotas__default-data-volume--fr.png
        :alt: General data volume limits

Setting specific limitations for individual users and group of users
--------------------------------------------------------------------

Some of your users have specific roles within your organisation that justify their need for quotas larger than the
default ones. For example, you may allow registered users to create only a couple of datasets each, but your Chief
Data Office will need to be able to publish as many datasets as the license allows.

In order to do so, you'll have to go to the :doc:`user's management page </managing_domain/01_managing_users_and_groups/users>` or his/her
:doc:`group management page </managing_domain/01_managing_users_and_groups/groups>` to set a more appropriate limit for his/her use case.
