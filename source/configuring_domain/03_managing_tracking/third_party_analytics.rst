Third-party Analytics
=====================
The monitoring tools included in OpenDataSoft are centered about API calls and usages; this is useful to gather extremely precise information about how
your data is consumed, but can be limiting if you try to measure the audience of your portal in a more broad manner, such as your referral sources,
your visitor's geographical origin, or the time spent on your portal.

Some third-party services are specialized in measuring audience, and can give this kind of information. OpenDataSoft supports integrations with **Google Analytics**
and **XiTi**.

If you need support for another analytics solution that is not mentioned here (such as Piwik or SmartTag), please contact us.


Google Analytics
----------------

Simply go to the *Domain > Configuration > Tracking* page and fill in your Google Analytics ID.

.. ifconfig:: language == 'en'

    .. image:: images/usage__google-analytics-integration--en.jpg
        :alt: Google Analytics ID configuration

.. ifconfig:: language == 'fr'

    .. image:: images/usage__google-analytics-integration--fr.jpg
        :alt: Configuration de l'ID Google Analytics

OpenDataSoft's Google Analytics integration tracks all the pages in your portal (including the back-office).


XiTi
----

.. admonition:: Note
   :class: note

   OpenDataSoft support the XiTi Analytics solution, which is edited by ATinternet. However, ATinternet also edits SmartTag, which is another analytics solution that is not supported by OpenDataSoft yet.

The activation of XiTi on a domain is handled by the OpenDataSoft team. It requires sending us the ``xtcore.js`` file (which should have been provided by XiTi), and
the identifiers that you have been provided with by XiTi.

OpenDataSoft's XiTi integration tracks all the pages in your portal (including the back-office).
