Managing quotas
===============

Your portal license
-------------------

Before diving into what quotas exist on OpenDataSoft portals, it is important to know that for each portal there is a
license that applies. A license is a contract between OpenDataSoft and the portal owners defining how much data can be
injected into the portal and the consumption of this data.

For example, freemium portals can have up to 5 datasets, each having at most 20000 records.

Your license defines 3 global limits on your portal, the two first ones regulate the amount of data you can inject into
the portal while the last one puts an upper limit on the consumption of this data.

* The **number of datasets** quota constraints the total number of datasets currently within the portal (published or not),
* the **number of records** quota limits to total number of records within published datasets, regardless of the actual content of these records.
* lastly, the **number of API calls** quota limits the number of requests made to the data within a given timeframe (usually within a month).

.. important::

   The number of API calls measure can be a bit difficult to wrap his/her around since this is a very technical measure
   of the activity. But it can be summarised as such: everytime somebody accesses your portal, for example the datasets
   catalog page, the interface will make requests to the portal for the filters values, for the 10 first datasets then
   the 10 next ones etc. Each of these requests is an API call and counted within the quota.

   API calls are therefore made by visitors on your portal, but also by developers using the API to retrieve the data
   you published and dashboards hosted outside of your portal.

You can see your license quotas and their current usage in your backoffice, under the **Analytics/Quotas** section.

.. ifconfig:: language == 'en'

    .. image:: quotas__license--en.png
        :alt: Current status of your licence quotas

.. ifconfig:: language == 'fr'

    .. image:: quotas__license--fr.png
        :alt: Current status of your licence quotas

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

    .. image:: quotas__default-api-calls--en.png
        :alt: General API calls limit

.. ifconfig:: language == 'fr'

    .. image:: quotas__default-api-calls--fr.png
        :alt: General API calls limit

.. ifconfig:: language == 'en'

    .. image:: quotas__default-data-volume--en.png
        :alt: General data volume limits

.. ifconfig:: language == 'fr'

    .. image:: quotas__default-data-volume--fr.png
        :alt: General data volume limits

Setting specific limitations for individual users and group of users
--------------------------------------------------------------------

Some of your users have specific roles within your organisation that justify their need for quotas larger than the
default ones. For example, you may allow registered users to create only a couple of datasets each, but your Chief
Data Office will need to be able to publish as many datasets as the license allows.

In order to do so, you'll have to go to the :doc:`user's management page <users>` or his/her
:doc:`group management page <groups>` to set a more appropriate limit for his/her use case.
