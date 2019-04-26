Federating data
===============

Federation is a core feature of the data network we are building. Using it is a good way to enrich your own data and it also gives a new way for others to discover and reuse them.

.. ifconfig:: language == 'en'

    .. image:: images/federation__introduction--en.png
        :alt: Federation simple schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__introduction--fr.png
        :alt: Schema fédération simple

Federation allows to redistribute, in full or in part, an open dataset from your domain (Opendatasoft instance) or from another domain. It is a way to collect external sources of data on its own domain.

Source
------

To federate a dataset, simply go to the *Catalog > Dataset* page and hit **New dataset**. Then, hit the little arrow on the right side of the **Add a source** button.

.. image:: images/federation_source.png

There is then a link **Add a dataset from the Opendatasoft network**, it leads to a console from where it is possible to configure a new federated source.

.. image:: images/federation_source2.png

Click on **Select a source dataset**.

.. image:: images/federation_sources.png

Different sources are available :

- The same domain
- All open datasets from every Opendatasoft domains
- Domain's subdomains (optionnal)

From there the next step is to either select a whole dataset or to select a part of it. The filters are the same as in the dataset explore console, there are pre-defined filters, a query box and, if available, the geofilter.

.. image:: images/federation_sources-filter.png

Once the data is selected the dataset appears in the backoffice like a normal one, except that there is no *Processing* tab. Indeed, the data is not duplicated and it is not possible to transform it. Only the metadata and visualization configuration can be overriden.

.. image:: images/federation_federated-source.png

Overriding metadata and visualizations
--------------------------------------

Both metadata and visualization can be overriden. Simply hit **Override** and fill the value you want.
It is possible to come back to the original value by hitting **Return to original value**.

.. image:: images/federation_override.png

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
