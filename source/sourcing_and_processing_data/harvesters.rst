Harvesters
==========

Global overview:

.. ifconfig:: language == 'en'

    .. image:: harvesters_schema--en.png
        :alt: Harvesters schema

.. ifconfig:: language == 'fr'

    .. image:: harvesters_schema--fr.png
        :alt: Schéma des moissoneurs



Through the harvesters, OpenDataSoft provides a solution to:

1. Bootstrap your domain with datasets from an existing portal
2. Keep your datasets synchronised with a service

A harvester is in charge to create, update and delete datasets.


Available harvesters
--------------------

Portal
~~~~~~
* :doc:`Arcgis </sourcing_and_processing_data/harvesters/arcgis>`
* :doc:`Arcgis OpenData</sourcing_and_processing_data/harvesters/arcgis_opendata>`
* :doc:`Ckan</sourcing_and_processing_data/harvesters/ckan>`
* :doc:`Junar</sourcing_and_processing_data/harvesters/junar>`
* :doc:`Socrata</sourcing_and_processing_data/harvesters/socrata>`

Service
~~~~~~~
* :doc:`CSW</sourcing_and_processing_data/harvesters/csw>`
* :doc:`FTP CSV</sourcing_and_processing_data/harvesters/ftp_csv>`
* :doc:`FTP with meta CSV</sourcing_and_processing_data/harvesters/ftp_with_meta_csv>`

Harvest
-------
To start the harvest process, click on the harvest button. It will query the remote service and create/update/delete datasets


Edit harvested datasets
-----------------------
You can change the metadata of a harvested dataset, the override value will be kept even if a new harvesting task is performed.
