Configuring metadata
====================

Metadata can be seen as the data describing the dataset itself. They are indeed a set of fields that once filled up, describe the dataset and the data it contains. Adding metadata to a dataset is really important, first of all because it helps making sure that the dataset can be found, understood, and reused by users. But it also is helpful for interoperability: they help making sure that other systems can understand the content of the dataset.


There are 4 kinds of metadata in the OpenDataSoft platform:

- Standard metadata. They include dataset title and description, but also information such as the license attached to that dataset. These basic metadata are information users can see when navigating the front office (Information tab of any published dataset), and are generally intended to be readable by any end-user.

- Interoperability metadata. Usually described in specific standards (such as DCAT or INSPIRE), they are intended for automatic usage by other systems for interoperability purposes, or for regulatory compliance.

- Admin metadata. These metadata are not meant to be seen by end-users, they are intended for administrators usage only (e.g. comments, information that should help communication or organization between administrators of an OpenDataSoft portal).

- Extra metadata. They are intended for specific applications, and not expected to be used by users directly (e.g. when configuring a default visualizations on the OpenDataSoft portal, this information is stored as an extra metadata). In most cases, the users will never have to access or edit them by themselves, the extra metadata will therefore not be documented. Please contact our support@opendatasoft.com for more information about these metadata.


In the OpenDataSoft platform, all metadata configurations are done in the Information tab.


.. add screenshot


.. toctree::
   :maxdepth: 2

   06_configuring_metadata/standard_metadata
   06_configuring_metadata/interoperability_metadata
   06_configuring_metadata/admin_metadata
