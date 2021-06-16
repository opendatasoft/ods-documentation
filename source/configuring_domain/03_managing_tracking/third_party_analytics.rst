Third-party analytics
=====================

The monitoring tools provided by Opendatasoft focus on API calls and usages.
They are useful to gather precise information on how data is consumed (see :doc:`Analyzing domain usage </managing_domain/03_analyzing_domain_usage/index>`). But it can be limiting when trying to measure more broadly the audience of a portal: referral sources, visitors' geographical origin, time spent on the portal, etc.

Third-party services, specialized in measuring audience, can give additional analytics such as those mentioned above. Opendatasoft supports integration with Google Analytics, XiTi, SmartTag by AT Internet, and Matomo.

All third-party analytics integrations are activated and configured from **Configuration** > **Tracking** in the back office.

Once configured and running, they allow audience tracking on the front office of a domain.


Google Analytics
----------------

Google Analytics is an analytics solution edited by Google.

Currently, only "Universal Analytics" properties are supported.

To activate and configure Google Analytics:

1. In the **Configuration** > **Tracking** section of the back office, go to the Google Analytics area.
2. Fill in the Google Analytics ID in the related text box (it should start with ``UA-``).
3. Click on the Save button in the top right corner.


XiTi Analyzer NX
----------------

XiTi is an analytics solution edited by AT Internet.

The activation of XiTi on an Opendatasoft domain involves the Opendatasoft team.

1. Contact support@opendatasoft.com and send a ``xtcore.js`` file, as well as your XiTi identifiers, both provided by XiTi.
2. After verification of the JavaScript file by Opendatasoft, if it is approved, XiTi is available on the Opendatasoft domain.
3. In the **Configuration** > **Tracking** section of the back office, go to the XiTi area.
4. Fill in the following configurations in their related text boxes: XTSD Code (mandatory), XTSITE Code (mandatory), Level 2 Site ID, and Root used in page names.
5. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`.
6. Click on the Save button in the top right corner. XiTi is now activated on the domain.


SmartTag
--------

SmartTag is an analytics solution edited by AT Internet.

The activation of SmartTag on an Opendatasoft domain involves the Opendatasoft team.

1. Contact support@opendatasoft.com and send a ``smarttag.js`` file provided by SmartTag.
2. After verification of the JavaScript file by Opendatasoft, if it is approved, SmartTag is available on the Opendatasoft domain.
3. In the **Configuration** > **Tracking** section of the back office, go to the SmartTag area.
4. Click the **Enable SmartTag** toggle button.
5. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`.
6. Click on the Save button in the top right corner. SmartTag is now activated on the domain.


Matomo
------

Matomo is an open-source analytics platform.
Matomo Tag Manager is not supported by Opendatasoft.

.. admonition:: Prerequisite
    :class: important
 
    Retrieve the site URL and site ID for your domain from Matomo's administration portal.

1. In the **Configuration** > **Tracking** section of the back office, go to the **Matomo** area.
2. Enter your site URL and site ID in the corresponding fields.
3. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`. 

Matomo is now activated on the domain.
