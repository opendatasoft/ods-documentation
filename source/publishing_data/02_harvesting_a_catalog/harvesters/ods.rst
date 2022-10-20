Opendatasoft Federation harvester
=================================

Harvest another Opendatasoft domain to create federated datasets automatically.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Domain ID (domain_id)
     * The ID or base URL of the domain you want to harvest.
     * ``documentation-resources``, https://documentation-resources.opendatasoft.com
   * * Refines (refines)
     * The refines you want to pass to filter the query (URL encoded)
     * refine.destination=Asia&refine.origin=France
   * * Api key (api_key)
     * The Api key used to access the other portal
     *

.. admonition:: Note
   :class: note

   If you want to harvest a single Opendatasoft dataset, you can :doc:`retrieve an Opendatasoft dataset </publishing_data/01_creating_a_dataset/retrieving_dataset>`.
