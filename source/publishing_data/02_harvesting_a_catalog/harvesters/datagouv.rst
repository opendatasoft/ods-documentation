data.gouv.fr harvester
======================

Retrieve datasets from a data.gouv.fr portal.

.. admonition:: Note
   :class: note

   This page is about harvesting data from data.gouv.fr to an Opendatasoft platform. To learn how to harvest data from Opendatasoft to data.gouv.fr please visit |datagouvdoc|.

.. |datagouvdoc| raw:: html

   <a href="https://doc.data.gouv.fr/moissonnage/ods/" target="_blank">the documentation on data.gouv.fr</a>

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Organization ID (organization_id)
     * The **id** of the organization you want to harvest (found here: https://www.data.gouv.fr/api/1/organizations/)
     * 534fffa5a3a7292c64a7809e
   * * Attachment (generate attachment)
     * Check this if you want to attach resources as attachments instead of using them as sources
     *
   * * Filter parameter name (filter_name)
     * Name of the parameter you want to pass to the data.gouv.fr API to filter the request that will be performed
     *
   * * Filter parameter value (filter_value)
     * Value of the above parameter
     *
