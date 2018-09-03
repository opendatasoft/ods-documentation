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

    .. figure:: images/subdomains__distribution-datasets--en.png
        :alt: Distribution interface
        :width: 400px
        :align: center

        Distribution interface

Clicking on *Add a dataset* opens your domain's catalog, which allows you to find and select a dataset to distribute.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__dataset-selection--en.png
        :alt: Dataset selection
        :width: 400px
        :align: center

        Dataset selection

Once the dataset is selected, it appears in the distributed dataset list.

As soon as you save, the dataset will be distributed and available on the subdomain's catalog.

.. admonition:: Note
   :class: note

   From the subdomain, a distributed dataset acts just like a federated dataset: you can't edit its data (e.g. you can't re-order fields, or add processors), but you can override metadata, manage the security settings, set the dataset as restricted, filter the data for specific users or groups. The dataset may also be deleted from the subdomain.

At any time, you can cancel the distribution using the little icon on the right in the distributed datasets list. This will remove the dataset from the subdomain's catalog,
but it won't delete the dataset from the parent domain.


Distributing pages to a subdomain
---------------------------------
From the subdomain's management page in the backoffice, you can find the *Distribute pages* interface.
By default, nothing is distributed, so the list is empty.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__distribution-pages--en.png
        :alt: Distribution interface
        :width: 400px
        :align: center

        Distribution interface

Clicking on *Add a page* opens a list of your domain's pages, which allows you to select one or more pages to distribute.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__pages-list--en.png
        :alt: Pages list
        :width: 400px
        :align: center

        Pages list

Once the selection is done, your pages will appear in the list.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__distribution-pages-filled--en.png
        :alt: Distribution interface with distributed pages
        :width: 400px
        :align: center

        Distribution interface with distributed pages

You just need to click on the *Save* button now, and the page will appear in the subdomain.

.. admonition:: Note
   :class: note

   From the subdomain, a distributed page can not be edited, because the page's content is entirely managed by the parent domain: if the content changes in the parent domain, it is immediately also changed in the subdomains. However, the subdomain can delete the page; it can also copy the page's content into a new page, which will be entirely editable like any normal page, but therefore won't automatically receive updates from the parent domain.

At any time, you can remove a distributed page using the little icon on the right of the page in the list. This will cancel the distribution to the subdomain, but will not delete the
page on the parent domain.


Distributing content to multiple subdomains
-------------------------------------------
From the subdomains list, you can select two or more subdomains, and click on the *Distribute* button; this will bring you
to a dedicated content distribution page for these subdomains.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__bulk-selection--en.png
        :alt: Selecting subdomains for distribution
        :width: 400px
        :align: center

        Selecting subdomains for distribution

This new page will remind you of the impacted subdomains, and will let you select pages and datasets in a interface similar to
the one for individual subdomains.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__bulk-content--en.png
        :alt: Selecting content
        :width: 400px
        :align: center

        Selecting content

Organize your distribution using parameters
-------------------------------------------
If you have several subdomains, you may want to distribute pages and datasets slightly different for each: for example, maybe you want
to distribute a homepage containing "Welcome on [something]", or maybe you have a country-wide dataset but you want to distribute
parts of it to regional subdomains.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__distribution-schema--en.png
        :alt: Distributing data based on a subdomain parameter
        :width: 400px
        :align: center

        Distributing data based on a subdomain parameter

.. ifconfig:: language == 'fr'

    .. figure:: images/subdomains__distribution-schema--fr.png
        :alt: Distributing data based on a subdomain parameter
        :width: 400px
        :align: center

        Distributing data based on a subdomain parameter

As an administrator managing your subdomains, you can define "distribution parameters"; and then you can fill these parameters for each
subdomain. These parameters will then be available to change the distributed content depending on the subdomain.

For example, we'd like to prepare a homepage and a dataset for a few city portals. We want the homepage to contain the city
name, and the dataset to be filtered on the ZIP Code.

First, we'll add two parameters for all our subdomains. This is managed from the subdomains' *Settings* page.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__settings--en.png
        :alt: Subdomains' settings
        :width: 400px
        :align: center

        Subdomains' settings

By clicking *Add a parameter*, we'll add two parameters, "zipcode" and "cityname".

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__add-parameter--en.png
        :alt: Add a distribution parameter
        :width: 400px
        :align: center

        Add a distribution parameter

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__parameters-list--en.png
        :alt: Distribution parameters
        :width: 400px
        :align: center

        Distribution parameters

Now, we can fill these parameters for each of my subdomains, by clicking on the subdomain's name in the subdomains list to get to the
subdomain configuration page.

Then, we can create the content I want to distribute. First, we can do a homepage containing the city's name. In the page editor,
we can use :code:`{domain.cityname}` as a placeholder for the city name filled for that subdomain.

Now, we can distribute my homepage and my dataset, using for example the multiple domain distribution page.

To distribute the homepage, we just add it to the list as usual.

To distribute the dataset, we add it to the list, and then click *Match parameters*: this allows you to configure a filter on the
data depending on one of the distribution parameters. In our case, our dataset has a :code:`zipcode` field, and we match it with
the :code:`zipcode` parameter of our subdomains.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__match-parameters--en.png
        :alt: Matching parameters for a dataset
        :width: 400px
        :align: center

        Matching parameters for a dataset

Our content distribution is ready.

.. ifconfig:: language == 'en'

    .. figure:: images/subdomains__parametrized-distribution--en.png
        :alt: Content distribution with parameters
        :width: 400px
        :align: center

        Content distribution with parameters

Now, we just have to *Save* it. Each of our subdomains now have a dedicated homepage that they can use, and the part of the dataset
that matches their city!
