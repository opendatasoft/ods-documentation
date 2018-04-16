Federating data
===============

Federation is a core feature of the data network we are building. Using it is a good way to enrich your own data and it also gives a new way for others to discover and reuse them.

.. ifconfig:: language == 'en'

    .. image:: images/federation__introduction--en.png
        :alt: Federation simple schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__introduction--fr.png
        :alt: Schema fédération simple

Federation allows to redistribute, in full or in part, an open dataset from your domain (OpenDataSoft instance) or from another domain. It is a way to collect external sources of data on its own domain.

Source
------

To federate a dataset, simply go to the *Catalog > Dataset* page and hit **New dataset**. Then, hit the little arrow on the right side of the **Add a source** button.

.. ifconfig:: language == 'en'

    .. image:: images/federation__source--en.jpg
        :alt: Federation source

.. ifconfig:: language == 'fr'

    .. image:: images/federation__source--fr.jpg
        :alt: Fédération source

There is then a link **Add a dataset from the OpenDataSoft network**, it leads to a console from where it is possible to configure a new federated source.

.. ifconfig:: language == 'en'

    .. image:: images/federation__config-source--en.jpg
        :alt: Federation source config

.. ifconfig:: language == 'fr'

    .. image:: images/federation__config-source--fr.jpg
        :alt: Fédération configuration source

Click on **Select a source dataset**.

.. ifconfig:: language == 'en'

    .. image:: images/federation__sources--en.jpg
        :alt: Federation sources

.. ifconfig:: language == 'fr'

    .. image:: images/federation__sources--fr.jpg
        :alt: Fédération sources

Different sources are available :

- The same domain
- All open datasets from every OpenDataSoft domains
- Domain's subdomains (optionnal)

From there the next step is to either select a whole dataset or to select a part of it. The filters are the same as in the dataset explore console, there are pre-defined filters, a query box and, if available, the geofilter.

.. ifconfig:: language == 'en'

    .. image:: images/federation__filter-source--en.jpg
        :alt: Federation filter source

.. ifconfig:: language == 'fr'

    .. image:: images/federation__filter-source--fr.jpg
        :alt: Fédération filtrer source

Once the data is selected the dataset appears in the backoffice like a normal one, except that there is no *Processing* tab. Indeed, the data is not duplicated and it is not possible to transform it. Only the metadata and visualization configuration can be overriden.

.. ifconfig:: language == 'en'

    .. image:: images/federation__federated-source--en.jpg
        :alt: Federation federated source

.. ifconfig:: language == 'fr'

    .. image:: images/federation__federated-source--fr.jpg
        :alt: Fédération source fédérée

Overriding metadata and visualizations
--------------------------------------

Both metadata and visualization can be overriden. Simply hit **Override** and fill the value you want.

.. ifconfig:: language == 'en'

    .. image:: images/federation__override-meta-1--en.jpg
        :alt: Federation override meta

.. ifconfig:: language == 'fr'

    .. image:: images/federation__override-meta-1--fr.jpg
        :alt: Fédération surcharger métadonnées

It is possible to come back to the original value by hitting **Return to original value**.


.. ifconfig:: language == 'en'

    .. image:: images/federation__override-meta-2--en.jpg
        :alt: Federation override meta

.. ifconfig:: language == 'fr'

    .. image:: images/federation__override-meta-2--fr.jpg
        :alt: Fédération surcharger métadonnées

Limitations
-----------

The federation does not duplicate the data. Only the metadata and visualizations are duplicated, hence can be overriden. There are two reasons for that:

- It is then possible to redistribute data without impacting the size of the data defined in the contract,
- When the data changes, the federated dataset is always up-to-date.

.. ifconfig:: language == 'en'

    .. image:: images/federation__explanation--en.png
        :alt: Federation schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__explanation--fr.png
        :alt: Schema fédération

.. important::
   Currently, when there is a modification in the original dataset related to the dataset schema, metadata or visualizations configuration, the federated dataset is not automatically updated. You'll then have to unpublish / republish your federated dataset to reflect the changes.
