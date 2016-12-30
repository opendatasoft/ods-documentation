Engaging users
==============


Comments
--------

The users can be allowed to comment on datasets. When activated, an additional
tab "Comments" will be displayed in the dataset page.

.. ifconfig:: language == 'en'

    .. image:: img/disqus-en.png

.. ifconfig:: language == 'fr'

    .. image:: img/disqus-fr.png

To activate this feature, you need to configure a Disqus account to associate
with the portal. Disqus is an external comment management system. You will need
to set your account shortname and public key in the ``Configure`` menu, in
the ``Social networks & sharing`` section.

.. ifconfig:: language == 'en'

    .. image:: img/disqus__configuration--en.png

.. ifconfig:: language == 'fr'

    .. image:: img/disqus__configuration--en.png

If you're unsure about how to get your Disqus credentials, you can follow the
detailed steps detailed in the page.


Encouraging reuses
------------------

One of the main goals of Open Data is to have your data reused, thus producing
new analyses or new services. Listing these reuses on the related datasets'
pages will help promote both the reuse itself and your data.

.. ifconfig:: language == 'en'

    .. image:: img/reuse--en.png

.. ifconfig:: language == 'fr'

    .. image:: img/reuse--fr.png

You can access the configuration for reuses in the ``Configuration`` menu
section, under ``Reuses``.

.. image:: img/reuse__configuration-en.png

Enabling the reuse feature on your portal will display a new Reuses section at
the bottom of the information tab on each dataset page. Additionaly, this section will provide a form through which users can submit their reuses and will list all approved reuses.

.. image:: img/reuse__form-en.png

In order to be displayed on a dataset's page, new reuses must be reviewed and
approved by an administrator.

.. image:: img/reuse__admin-en.png

When the reuse feature is enabled, you can additionally allow anonymous users
(users without an account) to submit reuses. This is recommended on Open Data
portals or portals which do not allow external users to create an account.

.. image:: img/reuse__anonymous-en.png

**Notifications**

By default the portal will send a notification to the administrators for every reuse submission.
You can add additional recipients email adresses in the form "New reuses notifications recipients".

.. image:: img/reuse__notifications-en.png

If you want to send these notifications only to one specific address, specify
it in the form and check "Send notifications exclusively to these addresses".
For example if you want to send these notifications only to opendata@yourdomain.com :

.. image:: img/reuse__notifications_exclusive-en.png


Contact form recipients
-----------------------

Within the pages you create you can include a contact form that allows users to
send a message to domain administrators. You can add recipients to these
messages in the ``Social networks & sharing`` section, in the ``Configure`` menu.

.. image:: img/engaging__contact-form-en.png


Dataset subscriptions
---------------------
Users on your portal can subscribe to any dataset they can access; by doing so,
they opt-in to receive notifications that the dataset publisher can decide to
send at any time, for example an information about a future schema change, or
to indicate that the data has been updated recently.

.. note::
    The button is only available to users who are logged on the portal using
    an account. If you want to use this feature on an open data portal for
    example, you may want to allow users to sign up on your portal.

.. image:: img/subscription__button--en.png

As a dataset publisher, you can see the list of users subscribed to your dataset
from its back-office configuration page, using the "Subscribers" tab which appears
if you have at least one subscriber on the dataset. From there,
you can also send a message to all the users who subscribed to this dataset.

.. image:: img/subscription__backoffice--en.png

It is advised to warn your subscribers in advance for any change that may impact
any of their reuse, such as a change in the schema (renaming an existing field,
removing a field) that may cause issues with existing reuses, or an update of
the data itself, if it is not updated very frequently.

User feedback on datasets
-------------------------
.. note::
    This feature is currently in beta, and is not available by default. Please contact
    us if you would like to try this feature on your own portal.

If you wish to gather feedback on the content of a specific dataset, you can activate
"User feedback" from its back-office configuration page.

.. ifconfig:: language == 'en'

    .. image:: img/feedback__configuration--en.png
        :alt: Feedback configuration

.. ifconfig:: language == 'fr'

    .. image:: img/feedback__configuration--fr.png
        :alt: Configuration de la contribution

Once the option is active and the dataset is published again, your users will
be able to send feedback on your dataset, either for a specific record, or to
suggest a new record, by clicking on the little chat bubble in the table view.

.. image:: img/feedback__table--en.png

Doing so will open a form where the user can write a message, and optionally
suggest new values.

.. image:: img/feedback__form--en.png

As the publisher of the dataset, you can access the list of all the feedback sent
by your users. This is available in the "Feedback" tab of the back-office dataset
page. From there, for each feedback sent, you can see the message,
the suggested values, and you can archive it once you consider it handled.

.. image:: img/feedback__list--en.png

.. note::
    This is not a crowdsourcing feature; the suggestions are not automatically
    applied or added to the dataset. It is up to the dataset's publisher to make
    sure the relevant feedback is applied to the source.
