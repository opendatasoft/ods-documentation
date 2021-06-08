Federating data
===============

Federation is a core feature of the data network we are building. Using it is a good way to enrich your own data, and it also gives others a new way to discover and reuse them.

.. ifconfig:: language == 'en'

    .. image:: images/federation__introduction--en.png
        :alt: Federation simple schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__introduction--fr.png
        :alt: Schema fédération simple

Federation allows to redistribute an open dataset from your domain (Opendatasoft instance) or another domain in full or in part. It is a way to collect external sources of data on its own domain.


Retrieving a dataset published with Opendatasoft
------------------------------------------------

1. In Catalog > Datasets, click on the **New dataset** button.
2. In the wizard that opens, select **Opendatasoft catalog** under the **Retrieve a dataset published with Opendatasoft** section, select the desired option:

- **Opendatasoft catalog** to get a list of all public datasets publish on all Opendatasoft domain
- **My catalog** to get a list of all datasets published on the current domain and its subdomains

3. Select the desired dataset from the list.
4. From the preview of the first 20 records that opens, you can filter data from the selected source dataset.
5. Configure the dataset information or use the pre-filled values:

   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.

Once created, the dataset appears in the back office, except that there is no **Processing** tab.

When federating data, the data is not duplicated, this means you can't transform it.

.. image:: images/federation_federated-source.png

Overriding metadata and visualizations
--------------------------------------

When federating data, you can only override the metadata and visualization configuration.

.. image:: images/federation_federated-source.png

To do so, click **Override** and enter the desired value.

After editing, you can also restore the original value from the source dataset by clicking **Return to original value**.

Limitations
-----------

The federation does not duplicate the data. Only the metadata and visualizations are duplicated; hence they can be overridden. There are two reasons for that:

- It is then possible to redistribute data without impacting the size of the data defined in the contract.
- When the data changes, the federated dataset is always up to date.

.. ifconfig:: language == 'en'

    .. image:: images/federation__explanation--en.png
        :alt: Federation schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__explanation--fr.png
        :alt: Schema fédération

.. important::
   Currently, the metadata of federated datasets are updated every day. Other modifications on the original dataset (for example, visualizations configurations, dataset schema) will not trigger an automatic update: unpublishing and republishing the federated dataset is necessary for the latest modifications to be visible.
