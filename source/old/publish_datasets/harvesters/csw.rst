CSW harvester
=============

Retrieve datasets from a Catalog Service for the Web (CSW portal).

The CSW server must provide the following capabilities:

- CSW version: 2.0.2
- output_shema: http://www.isotc211.org/2005/gmd

This harvester is not available by default. If you need to use it, please contact OpenDataSoft support team.

Parameters
----------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Example
   * * Csw url (cswurl)
     * The base URL of the CSW geoportal
     * https://infogeo.grandpoitiers.fr/geoportal/csw
   * * Theme thesaurus (theme_thesaurus)
     * The name of the thesaurus used to fill the themes metadata
     *
   * * Constraint language to CQL_TEXT (constraint_language)
     * Set this option to True if the portal requires to constraint the language to CQL_TEXT
     * True/False
   * * User (username)
     * The username if the CSW service needs authentication
     *
   * * Password (password)
     * The password if the CSW service needs authentication
     *
