OpenDataSoft Federation harvester
=================================

Harvest another OpenDataSoft domain to create federated datasets automatically.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Domain ID (domain_id)
     * The ID or base URL of the domain you want to harvest.
     * discovery, https://discovery.opendatasoft.com, https://www.datastro.eu
   * * Refines (refines)
     * The refines you want to pass to filter the query (URL encoded)
     * refine.destination=Asia&refine.origin=France
   * * Api key (api_key)
     * The Api key used to access the other portal
     *

.. admonition:: Note
   :class: note

   If you want to harvest a single OpenDataSoft dataset, you can use the :doc:`federation </publishing_data/01_creating_a_dataset/federating_data>`
