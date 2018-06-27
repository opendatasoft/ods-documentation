CKAN harvester
==============

Retrieve datasets from a CKAN portal.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * CKAN root URL (url)
     * The base url of the portal
     * https://www.hri.fi/api/3
   * * Maximum results to harvest (limit)
     * Only retrieve a certain amount of datasets.
     * 5
   * * Number of results to skip before starting the harvest (offset)
     * Skip a certain amount of datasets before starting to harvest.
     * 3
   * * Sort parameter (sort)
     * Sorting of the CKAN search results. Default: 'relevance asc, metadata_modified desc'. This is a comma-separated string of field names and sort-orderings.
     * relevance desc
   * * CKAN API Key (api_key)
     * If the portal requires authentication, your API Key.
     *
   * * CKAN Group (group)
     * Name of the group you want to harvest.
     * education
