Distributing content to subdomains
==================================

As a "parent" domain, you can choose to distribute specific pages and datasets to your subdomains. For example you could:
- distribute a common homepage to your other business units
- distribute a part of a large dataset to subdomains you created for each of your customers
- distribute a dashboard, and at the same time the datasets used for the dashboard



Distributing datasets to a subdomain
------------------------------------
From the subdomain's management page in the backoffice, you can find the *Distribute datasets* interface.
By default, nothing is distributed, so the list is empty.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__distribution-datasets--en.png
        :alt: Distribution interface
        :width: 400px
        :align: center

        Distribution interface

Clicking on *Add a dataset* opens your domain's catalog, which allows you to find and select a dataset to distribute.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__dataset-selection--en.png
        :alt: Dataset selection
        :width: 400px
        :align: center

        Dataset selection

Once the dataset is selected, it appears in the distributed dataset list. 

As soon as you save, the dataset will be distributed and available on the subdomain's catalog. 

.. note::
    From the subdomain, a distributed dataset acts just like a federated dataset: you can't edit its data (e.g. you can't re-order fields, or add processors), but you
    can manage the security settings, set the dataset as restricted, filter the data for specific users or groups. The dataset may also be deleted from the subdomain.

At any time, you can cancel the distribution using the little icon on the right in the distributed datasets list. This will remove the dataset from the subdomain's catalog,
but it won't delete the dataset from the parent domain.


Distributing pages to a subdomain
---------------------------------
From the subdomain's management page in the backoffice, you can find the *Distribute pages* interface.
By default, nothing is distributed, so the list is empty.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__distribution-pages--en.png
        :alt: Distribution interface
        :width: 400px
        :align: center

        Distribution interface

Clicking on *Add a page* opens a list of your domain's pages, which allows you to select one or more pages to distribute.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__pages-list--en.png
        :alt: Pages list
        :width: 400px
        :align: center

        Pages list

Once the selection is done, your pages will appear in the list.

.. ifconfig:: language == 'en'

    .. figure:: subdomains__distribution-pages-filled--en.png
        :alt: Distribution interface with distributed pages
        :width: 400px
        :align: center

        Distribution interface with distributed pages

You just need to click on the *Save* button now, and the page will appear in the subdomain.

.. note::
    From the subdomain, a distributed page can not be edited, because the page's content is entirely managed by the parent domain: if the content changes in the parent domain, 
    it is immediately also changed in the subdomains. However, the subdomain can delete the page; it can also copy the page's content into a new page, which will be entirely editable
    like any normal page, but therefore won't automatically receive updates from the parent domain.

At any time, you can remove a distributed page using the little icon on the right of the page in the list. This will cancel the distribution to the subdomain, but will not delete the 
page on the parent domain.


Distributing content to multiple subdomains
-------------------------------------------

Organize your distribution using parameters
-------------------------------------------