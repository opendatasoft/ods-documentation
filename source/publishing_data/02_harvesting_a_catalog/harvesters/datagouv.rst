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
   :widths: 25 50 25

   * * Name
     * Description
     * Examples
   * * Organization ID (organization_id)
     * The identifier of the organization you want to harvest. 
 
       You can find the identifier for a specific organization as follows:

       1. Go to https://www.data.gouv.fr/fr/organizations/.
       2. Search for an organization.
       3. Click on the desired result to open it.
       4. On the desired organization page, you'll find the `ID` under the "Informations techniques" section.
     * ``534fff75a3a7292c64a77de4`` is the identifier for etalab.
   * * Filter parameter name (filter_name)
     * The name of the parameter you want to pass to the data.gouv.fr API to filter the request that will be performed:
       
       - ``tag`` is used to filter datasets associated with a specific keyword.
       - ``license`` is used to filter datasets published under a specific license.
       - ``temporal_coverage`` is used to filter datasets with data covering a specific period.
       - ``geozone`` is used to filter datasets with data covering a specific geographical area.
       - ``granularity`` is used to filter datasets with a specific territorial coverage granularity.
       - ``format`` is used to filter datasets published under a specific format.

     * ``temporal-coverage``
   * * Filter parameter value (filter_value)
     * The value of the filter parameter

       The value for some filter parameters has a very specific syntax. You can perform a search on https://www.data.gouv.fr/fr/datasets/ to get some hints about possible values.
     * ``2020-01-01-2020-12-31`` is the value for ``temporal-coverage`` if you want to filter datasets covering the period starting from 01 January 2020 to 31 December 2020.
   * * Attachment (attachment)
     * Select this checkbox to attach resources as attachments instead of using them as sources.
     * 
