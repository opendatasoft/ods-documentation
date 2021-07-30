CSW harvester
=============

Retrieve datasets from a Catalog Service for the Web (CSW portal).

The CSW server must provide the following capabilities:

- CSW version: 2.0.2
- output_schema: https://www.isotc211.org/2005/gmd/

This harvester is not available by default. If you need to use it, please contact Opendatasoft support team.

Parameters
----------

.. list-table::
   :header-rows: 1
   :widths: 1 2

   * * Name
     * Description
   * * CSW URL
     * The base URL of the CSW geoportal, for example: https://infogeo.grandpoitiers.fr/geoportal/csw
   * * User
     * The username if the CSW service requires authentication
   * * Password
     * The password if the CSW service requires authentication
   * * Theme thesaurus
     * The name of the thesaurus used to fill the themes metadata
   * * Constraint language
     * Select the check box if the portal requires to constraint the language to CQL_TEXT
   * * Invert coordinates
     * Select the check box to enforce coordinate inversion in generated datasets
