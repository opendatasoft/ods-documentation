Configuring metadata
====================

Metadata can be seen as the data describing the dataset itself. They are indeed a set of fields that once filled up, describe the dataset and the data it contains. Filling up the metadata of a dataset is really important: it helps making sure that the dataset can be found, understood, and reused by users. Interoperability metadata, when activated, are just as important: they help making sure that other systems can understand the content of the dataset.


In the OpenDataSoft platform, all metadata configurations are done in the Information tab.


.. localizedimage:: images/metadata_configuration_interface.png
    :alt: Information tab when publishing a new dataset, to configure the metadata of the dataset


There are 4 kinds of metadata in the OpenDataSoft platform:

- **Standard metadata** *(default)*: basic metadata displayed in the front office for the users.
- **Interoperability metadata** *(on demand)*: intended for automatic usage by other systems for interoperability purposes, or for regulatory compliance.
- **Admin metadata** *(on demand)*: intended for administrators usage only, therefore never displayed anywhere in the front office.
- **Applicative metadata** *(on demand)*: intended for specific applications, and not expected to be used by users directly. In most cases, the users will never have to access or edit them by themselves. They can be visible from the front office but also through the OpenDataSoft Search API. The extra metadata will not be documented in this documentation, please contact OpenDataSoft for more information about these metadata.


.. toctree::
   :maxdepth: 2

   standard_metadata
   interoperability_metadata
   admin_metadata
