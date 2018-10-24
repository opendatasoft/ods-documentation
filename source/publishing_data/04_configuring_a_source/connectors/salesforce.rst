Salesforce connector
====================

.. admonition:: Important
   :class: important

   This connector is not available by default. Please contact OpenDataSoft for the activation of this connector on a given OpenDataSoft domain.

The Salesforce connector is used to extract data from the force.com REST API.

.. admonition:: Prerequisite
   :class: important

   An application on the Salesforce instance must be created and configured. Please refer to the `Salesforce documentation <https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_understanding_username_password_oauth_flow.htm>`_ for more information.


Creation
~~~~~~~~

1. Enter ``force://``, followed by the object name (e.g. ``force://GC_MY_Object__c``) in the Enter a URL area, when creating a new dataset.
2. Press Enter, or click the + button.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Client Id
     * Consumer key from the connected application definition.
     * Indicate the client ID in the textbox.
   * * Client Secret
     * Consumer Secret from the connected application definition.
     * Indicate the client secret in the textbox.
   * * Username
     * End-user’s username.
     * Indicate the username in the textbox.
   * * Password
     * End-user’s password.
     * Indicate the password in the textbox.
   * * Security Token
     * End-user’s security token.
     * Indicate the security token in the textbox.
   * * Use Sandbox
     * To use the Salesforce sandbox for tests.
     * By default, the box is not checked. Check the box to use the sandbox.
   * * Filtered Fields
     * Fields to retrieve from the object.
     * Indicate the name of the field in the textbox. Relationships can be followed with the following notation: ``GC_OBO_Referential__r.Name``.
