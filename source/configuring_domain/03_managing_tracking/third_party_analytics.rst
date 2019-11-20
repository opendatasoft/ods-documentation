Third-party Analytics
=====================

The monitoring tools included in Opendatasoft focus on API calls and usages, which is useful to gather precise information on how
data is consumed. But it can be limiting when trying to measure more broadly the audience of a portal (i.e. referral sources,
visitors geographical origin, time spent on the portal, etc.).

Third-party services, specialized in measuring audience, an give additionnal information such as those mentioned above. Opendatasoft supports integrations with Google Analytics, and XiTi and SmartTag by AT Internet.

All third-party analytics integrations are activated and configured from Configuration > Tracking in the back office.


.. admonition:: Important
   :class: important

   For most integrations, Opendatasoft must be involved to allow the activation of a third-party service from the back office. Please read the documentations below carefully.


Google Analytics
----------------

.. image:: images/configuration_tracking-google-analytics.png

Google Analytics is an analytics solution edited by Google. It allows tracking on all pages of an Opendatasoft domain, back office included.

To activate and configure Google Analytics:

1. In the Configuration > Tracking section of the back office, go to the Google Analytics area.
2. Fill in the Google Analytics ID in the related textbox.
3. Click on the Save button in the top right corner.


XiTi
----

.. image:: images/configuration_tracking-xiti.png

XiTi is an analytics solution edited by AT Internet. It allows tracking on all the pages of an Opendatasoft domain, back office included.

The activation of XiTi is managed by the Opendatasoft team. A ``xtcore.js`` file, provided by XiTi, as well as the XiTi identifiers also provided by XiTi, must be sent to Opendatasoft. After verification, if the file is validated, the configuration of XiTi will be activable by a domain administrator.


SmartTag
--------

.. image:: images/configuration_tracking-smarttag.png

SmartTag is an analytics solution edited by AT Internet. It allows tracking on all the pages of an Opendatasoft domain, back office included.

The activation of SmartTag is managed by the Opendatasoft team. A ``smarttag.js`` file, provided by SmartTag, must be sent to Opendatasoft. After verification, if the file is validated, the configuration of SmartTag will be activable by a domain administrator.
