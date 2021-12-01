Retrieving an Opendatasoft dataset
==================================

Retrieving a dataset published with Opendatasoft is a core feature of the data network we are building.
It is a good way to enrich your own data.
It also provides others with a new way to discover and reuse your data.

It allows redistributing an open dataset from your domain (Opendatasoft instance) or another domain in full or in part.
It is a way to collect external sources of data on your own domain.

Selecting the dataset
---------------------

To retrieve a dataset from your domain or another domain, you need to select it.

1. In **Catalog** > **Datasets**, click on the **New dataset** button.
2. In the wizard that opens, select the desired option under the **Retrieve a dataset published with Opendatasoft** section:

   - Select **Opendatasoft network** to get a list of all public datasets published on all Opendatasoft domains.
   - Select **My catalog** to get a list list of all datasets published on the current domain and its subdomains.

3. Select the desired dataset from the list.
4. From the preview of the first 20 records that opens, you can filter data from the selected source dataset.
5. Configure the dataset information or use the pre-filled values:

   - In the **Dataset name** field, enter the title for this dataset.
   - In the **Dataset technical identifier** field, enter a meaningful identifier for this dataset.
   - If you want anyone with access to your domain to be able to explore the dataset, toggle off **Access restricted to allowed users and groups**.

Once created, the dataset appears in the back office, except that there is no **Processing** tab.

.. image:: images/federation_federated-source.png

.. admonition:: note
   :class: note

   When retrieving an Opendatasoft dataset, the data is not duplicated. This means you cannot transform it.

Overriding metadata and visualizations
--------------------------------------

When retrieving an Opendatasoft dataset, you can only override the metadata and visualization configuration.

1. If you want to override the title, click **Override** next to the title and enter the desired title.
2. If you want to override other metadata, go to the **Information** tab of the edition interface, click **Override** and enter the desired value.
3. If you want to override visualizations, go to the **Visualizations** tab of the edition interface, click **Override** and edit the desired visualization configuration.

After editing, you can restore the original value from the source dataset by clicking **Return to original value**.

Limitations
-----------

Retrieving an Opendatasoft dataset does not duplicate the data. Only the metadata and visualizations are duplicated; hence they can be overridden. There are two reasons for that:

- It is then possible to redistribute data without impacting the size of the data defined in the contract.
- When the data changes, the federated dataset is always up to date.

.. ifconfig:: language == 'en'

    .. image:: images/federation__explanation--en.png
        :alt: Federation schema

.. ifconfig:: language == 'fr'

    .. image:: images/federation__explanation--fr.png
        :alt: Schema fédération

.. important::
   Currently, the metadata of federated datasets are updated every day. Other modifications on the original dataset, such as visualization configurations or the dataset schema, will not trigger an automatic update. You need to unpublish and republish the federated dataset for the latest modifications to be visible.
