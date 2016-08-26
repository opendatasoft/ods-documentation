Authenticating yourself
=======================

It is very important that you tell the platform who you are when you are making requests to the API or you will be
treated as an anonymous user, thus loosing special access privileges you may have obtained on either portals or
datasets.

In order for the platform to know who you are, you need to either:

* be logged in a portal and make queries from the portal on the portal (using the console for example), or
* provide an **API key** along with your requests that will uniquely identify you.

Finding and generating API keys
-------------------------------

In order to see the list of your API keys, head to your profile page on ``http://<youropendatasoftportal>.com/account/``
(or by clicking on your name in the header).

.. ifconfig:: language == 'en'

  .. image:: authentication__profile-link--en.png
     :alt: The profile link in the header

.. ifconfig:: language == 'fr'

  .. image:: authentication__profile-link--fr.png
     :alt: The profile link in the header

Once there, go to the tab entitled *My API keys* to see the list of your active keys, revoke them and create new ones.


.. ifconfig:: language == 'en'

  .. image:: authentication__my-api-keys--en.png
     :alt: My API keys in the profile page

.. ifconfig:: language == 'fr'

  .. image:: authentication__my-api-keys--fr.png
     :alt: My API keys in the profile page

.. important::

   While you may have as many keys as you want, they all identify you identically. Which means that they all grant the
   same rights (yours) to any person using them. Therefore you shouldn't share your keys.


Providing API keys within your requests
---------------------------------------

Now that you have an API key, you can pass it along your request through the query parameter ``apikey``.

To illustrate this, let's say that you have set up a private portal and would like to retrieve the list of datasets
from an external application you are building.

If your application calls::

   http://myprivateportal.opendatasoft.com/api/v2/catalog/datasets/

You'll receive a ``403 Forbidden`` error.

Whereas if you call::

   http://myprivateportal.opendatasoft.com/api/v2/catalog/datasets/?apikey=<myapikey>

You'll get a JSON with the full list of datasets available on the portal.
