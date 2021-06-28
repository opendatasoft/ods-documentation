Third-party analytics
=====================

The monitoring tools provided by Opendatasoft focus on API calls and usages.
They are useful to gather precise information on :doc:`how data is consumed </managing_domain/03_analyzing_domain_usage/index>`.
But, they can be limiting when trying to measure more broadly the audience of a portal.

Third-party services, specialized in measuring audience, can give additional analytics such as referral sources, visitors' geographical origin, or time spent on the portal.

Opendatasoft supports integration with Google Analytics, XiTi, SmartTag by AT Internet, and Matomo.
Once configured and running, they allow audience tracking on the front office of a domain.


Configuring Google Analytics
----------------------------

Google Analytics is an analytics solution edited by Google.
Currently, only "Universal Analytics" properties are supported.

.. admonition:: Prerequisite
    :class: important
 
    Retrieve the Google Analytics ID for your domain. It should start with ``UA-``.

1. In the **Configuration** > **Tracking** section of the back office, go to the Google Analytics area.
2. Enter your Google Analytics ID in the corresponding field.
3. Click on the **Save** button in the top right corner.

Google Analytics is now activated on the domain.

Using Google Analytics on your portal involves obtaining visitors' consent to comply with certain privacy laws such as the EU General Data Protection Regulation (GDPR). For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`.


Configuring XiTi Analyzer NX
----------------------------

XiTi is an analytics solution edited by AT Internet.

The activation of XiTi on an Opendatasoft domain involves the Opendatasoft team.

.. admonition:: Prerequisite
    :class: important

    Contact support@opendatasoft.com and send an ``xtcore.js`` file and your XiTi identifiers, both provided by XiTi.

    After verification and approval of the JavaScript file by Opendatasoft, XiTi is available on the Opendatasoft domain.

1. In the **Configuration** > **Tracking** section of the back office, go to the **XiTi** area.
2. Enter in the following values in the related fields: XTSD Code (mandatory), XTSITE Code (mandatory), Level 2 Site ID, and Root used in page names.
3. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`.
4. Click on the **Save** button in the top right corner.

XiTi is now activated on the domain.


Activating SmartTag
-------------------

SmartTag is an analytics solution edited by AT Internet.

The activation of SmartTag on an Opendatasoft domain involves the Opendatasoft team.

.. admonition:: Prerequisite
    :class: important

    Contact support@opendatasoft.com and send a ``smarttag.js`` file provided by SmartTag.

    After verification and approval of the JavaScript file by Opendatasoft, SmartTag is available on the Opendatasoft domain.

1. In the **Configuration** > **Tracking** section of the back office, go to the **SmartTag** area.
2. Click the **Enable SmartTag** toggle button.
3. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`.
4. Click on the **Save** button in the top right corner.

SmartTag is now activated on the domain.


Configuring Matomo
------------------

Matomo is an open-source analytics platform.
Matomo Tag Manager is not supported by Opendatasoft.

.. admonition:: Prerequisite
    :class: important
 
    Retrieve the site URL and site ID for your domain from Matomo's administration portal.

1. In the **Configuration** > **Tracking** section of the back office, go to the **Matomo** area.
2. Enter your site URL and site ID in the corresponding fields.
3. Depending on your tracker configuration, toggle on **Require user consent** to allow visitors to enable or disable cookies in a cookie banner. In case of doubt, you may contact the relevant people in your organization. For more information, see :doc:`../../../configuring_domain/02_managing_legal_information/legals`. 

Matomo is now activated on the domain.
