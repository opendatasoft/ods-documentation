Managing subdomains quotas
==========================

A subdomain's consumption (API calls, number of datasets...) is done directly from the parent domain's quotas. To prevent one of your subdomain to
consume too much of your own quotas, you can assign individual limits to each subdomain.

.. admonition:: Note
   :class: note

   This will not *assign* a part of your quota for the subdomain's exclusive usage, but will instead act as a limit. So if you have a quota of 1 million API calls per month, and have 5 subdomains each with 500 000 API calls per month, all the quota of your own domain could be consumed entirely by subdomains, but it may also be a good solution if you just want to plan ahead for a sudden API calls surge on your subdomains. Plan carefully!

Quotas of subdomains are managed at the parent domain level. Administrators can thus:

* Configure the number of API calls a subdomain can have
* The maximum number of datasets that can be published on a subdomain
* The maximum total number of records in a subdomain
* The maximum number of records of a dataset in a subdomain

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__quotas--en.png
        :alt: Subdomains quotas
        :width: 600px
        :align: center

        Manage your subdomain quotas
