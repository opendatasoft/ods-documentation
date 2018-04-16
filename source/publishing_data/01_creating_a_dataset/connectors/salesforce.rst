Salesforce connector
====================

The Salesforce connector extracts data from the Force.com REST API. You need to create and configure an application on your Salesforce instance. See the `documentation <https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_understanding_username_password_oauth_flow.htm>`_ for more information.

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
   * * Client Id
     * The Consumer Key from the connected app definition.
   * * Client Secret
     * The Consumer Secret from the connected app definition.
   * * Username
     * End-user’s username.
   * * Password
     * End-user’s password.
   * * Security Token
     * End-user’s security token.
   * * Filtered Fields
     * The fields to retrieve from the object. Relationship can be followed with this notation: GC_OBO_Referential__r.Name


Creation
~~~~~~~~

Enter the ``force://`` followed by the object name in the URL box, for example: ``force://GC_MY_Object__c``



