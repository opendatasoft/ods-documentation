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
     * The identifier of the organization you want to harvest. 
 
       You can find the identifier for a specific organization as follows:

       1. Go to https://www.data.gouv.fr/fr/organizations/.
       2. Search for an organization.
       3. Click on the desired result to open it.
       4. On the desired organization page, you'll find the `ID` under the "Informations techniques" section.
     * 534fffa5a3a7292c64a7809e
   * * Filter parameter name (filter_name)
     * Name of the parameter you want to pass to the data.gouv.fr API to filter the request that will be performed
     *
   * * Filter parameter value (filter_value)
     * Value of the above parameter
     *
   * * Attachment (generate attachment)
     * Select this checkbox to attach resources as attachments instead of using them as sources.
     *