Configuring the calendar
========================

The OpenDataSoft platform lets you easily create calendar views from your published datasets.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__result--en.png

       A calendar built from a dataset containing all events from OpenAgenda

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__result--fr.png

       A calendar built from a dataset containing all events from OpenAgenda

Datasets requirements
---------------------

For the calendar view, each record of your dataset is a different event. These events must contain a start time, an end
time and a title. Which means your dataset must have two datetime fields and a text field for the calendar view to be
available.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__processing-settings--en.png

       2 fields set as datetime

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__processing-settings--fr.png

       2 fields set as datetime

Records without titles will be displayed on the calendar as titleless events, but missing either the start or end time
will cause the view to simply ignore the record.

Full day events
~~~~~~~~~~~~~~~

Though very simple, the "two datetime fields and a text field" requirement forces you to setup full day events as events ~
starting at 12AM on the given day and finishing a second before midnight on the same day (00:00:00 to 23:59:59).

Configuration
-------------

Enabling the calendar view
~~~~~~~~~~~~~~~~~~~~~~~~~~

Once you have configured two of your dataset's fields as datetimes and another field as text, you'll see the calendar
tab become available.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__tab-unavailable--en.png

       Calendar tab unavailable

    .. figure:: images/calendar__tab-available--en.png

       Calendar tab available

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__tab-unavailable--fr.png

       Calendar tab unavailable

    .. figure:: images/calendar__tab-available--fr.png

       Calendar tab available

It doesn't mean that your dataset is fully configured though. The view is available but not enabled by default. You'll
have to manually enable it.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__checkbox--en.png

       This checkbox will enable the calendar view

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__checkbox--fr.png

       This checkbox will enable the calendar view

Setting up events' fields
-------------------------

Once the calendar is enabled, you'll need to make sure the events' fields are well configured. You'll see that the first
text field has been selected for the title, the first datetime for the start time and the second datetime for the end
time. You may have multiple other text/datetime fields in your dataset, select here which one determine the events'
properties.

This is also where you'll be able to select the events' color.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__event-default-settings--en.png

       Default configuration for my calendar. The event's fields are pre-selected but not correct.

    .. figure:: images/calendar__event-settings--en.png

       Corrected settings

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__event-default-settings--fr.png

       Default configuration for my calendar. The event's fields are pre-selected but not correct.

    .. figure:: images/calendar__event-settings--fr.png

       Corrected settings

Setting up the tooltip
----------------------

In the calendar view, a click on a event will bring forward a tooltip containing more information about the events.

.. image:: images/calendar__tooltip--en.jpg
        :alt: Calendar tooltip

You can :doc:`configure the tooltip</publishing_data/07_configuring_visualizations/02_configuring_map_view/tooltip>` in exactly the same way than for the map or the images.

Sharing
-------

Once your dataset is correctly setup and published, you can of course share this calendar with anyone having the rights
to view the calendar.

To do so, you can always copy/paste the url from your browser's address bar, but you can also use any of the 3 options
offered below the calendar itself.

1. Share the url

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__share--en.png

       The 3 sharing options, with first and foremost the url

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__share--fr.png

       The 3 sharing options, with first and foremost the url

2. Code snippet to embed the view inside any other website

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__embed--en.png

       Embed this code into any other page to display your calendar there

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__embed--fr.png

       Embed this code into any other page to display your calendar there

3. Code snippet to include in any of your dashboard or page on the platform.

.. ifconfig:: language == 'en'

    .. figure:: images/calendar__widget--en.png

       Copy this code to one your dashboard on the platform

.. ifconfig:: language == 'fr'

    .. figure:: images/calendar__widget--fr.png

       Copy this code to one your dashboard on the platform
