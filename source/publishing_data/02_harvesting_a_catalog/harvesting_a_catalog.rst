Harvesting a catalog
====================

Harvesters provide a way for administrators to easily create and update an important number of datasets by importing them from an external source such as a CSW catalog or an ArcGIS service, among many others.

The two main usages of harvesters are:

1. Bootstrap your portal with datasets from an existing portal
2. Keep your datasets synchronised with an external service

The harvester will create datasets, update their metadata and resources, keep them synchronized, and publish them.

.. ifconfig:: language == 'en'

    .. figure:: images/harvesters_schema--en.png
        :alt: Harvesters schema
        :align: center

        Global overview

.. ifconfig:: language == 'fr'

    .. figure:: images/harvesters_schema--fr.png
        :alt: Schéma des moissoneurs
        :align: center

        Vue d'ensemble


Creating a harvester
--------------------

To get started with harvesters, click on the **harvesters** menu in your backoffice, and then on **Add harvester**. You will be asked to choose the type of the portal you want to harvest, and a name for your harvester.

.. ifconfig:: language == 'en'

    .. image:: images/harvesters_page--en.png
        :alt: Harvesters screen

.. ifconfig:: language == 'fr'

    .. image:: images/harvesters_page--fr.png
        :alt: Ecran des moissonneurs

When you are done, click on **Create harvester** and you will be redirected to the configuration form of the harvester. As it depends on the harvester type, please refer to each harvester page below for detailed instructions.

Some options are available for every harvester type such as:

- **Update on deletion**: if the source datasets are deleted on the harvested portal, delete them on this OpenDataSoft portal too. Otherwise, you may have datasets that are not available on the external service anymore (e.g: if they are deleted from the external service).
- **Download resources**: download resources instead of attaching them via URL. This options allows you to detach your datasets from the remote portal by permanently copying all required data on the OpenDataSoft platform. Otherwise, your datasets will be linked to the external service and will access remote datasets via their URL for every publishing.
- **Restrict visibility**: make the visibility of harvested datasets restricted. Otherwise, they will have the default visibility of your portal.
- **Default metadata**, **inspire metadata**, **DCAT metadata**: allow you to override some metadata in every harvested dataset. Useful if you want to force the theme or publisher instead of using the one used on the external service.

Once you are done configuring the harvester, you can click on the **Preview** button to test run it on a few datasets. If you see some titles and descriptions and they look correct, you are all set. Otherwise, please double check your configuration.

Running a harvester
-------------------

The harvesting process can be quite long on external services with many datasets or with big ones, so it is split in two phases.

- First, the harvester will connect to the remote service and discover all the datasets it contains. It will then create an unpublished dataset for each remote dataset it finds. These datasets will contain all available metadata and resources (as URLs or as files depending on the *download resources* option). This happens when you click on the **Start harvester** button.
- Next, it will process and publish all the harvested datasets. This step can take a while. This happens when you click on the **Publish** button.

Editing harvested datasets
--------------------------

Before publishing them, you can change the metadata of the harvested datasets. On the dataset page (information tab), you can manually override metadata by clicking on **Override** and adding your own value. This override will be kept even if you restart your harvester.

Deleting a harvester
--------------------

When you delete a harvester by clicking the **Delete harvester** button, you can choose between keeping the harvested datasets (they will be kept as regular datasets in your catalog), or by deleting them with the harvester.

If you choose to keep them, please keep in mind that you will have to handle them one by one to unpublish or delete them afterwards, and that they will be duplicated if you recreate another harvester on the same external service.

Harvester types
---------------

Portals
~~~~~~~

.. toctree::
   :titlesonly:

   harvesters/ods
   harvesters/datagouv
   harvesters/arcgis
   harvesters/arcgis_opendata
   harvesters/ckan
   harvesters/junar
   harvesters/socrata
   harvesters/datajson
   harvesters/quandl
   harvesters/enigma
   harvesters/fred
   harvesters/dbnomics

Services
~~~~~~~~

.. toctree::
   :titlesonly:

   harvesters/csw
   harvesters/ftp_with_meta_csv

.. admonition:: Note
   :class: note

   Unless otherwise specified, all harvesters use HTTPS by default, but support HTTP if specified in the provided URL.

   The FTP harvester uses FTPS (explicit mode on port 21) by default, but supports FTP if specified in the provided URL or if FTPS is not supported by the remote server.

Scheduling
----------

From the configuration page of a harvester, it is possible to make it run periodically. To do this, scroll to the bottom of the page and click on "Set recurring runs". You can run the harvester every day, or choose the days of week or the days of month it will run on. However, you always have to choose the time of day when it will run because it can not run more than once a day.

The periodic run will only trigger if the harvester has been run at least once.

At the end of a scheduled run, all the harvester's already published datasets will be republished, but unpublished datasets or new datasets will not be automatically published.

.. ifconfig:: language == 'en'

    .. figure:: images/harvesters_scheduling--en.png
        :alt: Harvester scheduling

.. ifconfig:: language == 'fr'

    .. figure:: images/harvesters_scheduling--fr.png
        :alt: Planification d'un moissoneur
