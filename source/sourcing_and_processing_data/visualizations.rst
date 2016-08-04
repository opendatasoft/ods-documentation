Configuring visualizations
==========================

Displaying geographical data in a map
-------------------------------------

Displaying data in a chart
--------------------------

The OpenDataSoft platform lets you easily build charts using the published datasets. Let's first study single dataset
charts.

We will use as a sample a simple dataset containing 3 fields:

* The **country** field, a *text* field defined as a *facet*
* The **year** field, a *date* field with a *year* precision and defined as a *facet*
* The **inhabitants** field, an *integer* field

.. ifconfig:: language == 'en'

    .. image:: visualizations__charts-dataset--en.png
        :alt: Graph dataset

.. ifconfig:: language == 'fr'

    .. image:: visualizations__charts-dataset--fr.png
        :alt: Jeu de données du graphique

Remember that without facets, you cannot do any data analysis! To access the charts section for you dataset, simply
go the **Analysis** tab.

Note also that for the sake of simplicity, we've illustrated this article with a very small dataset. But the below also
applies to datasets with millions of rows.

A basic chart
~~~~~~~~~~~~~

By default, the interface displays the default chart configured by the dataset owner. You can however play with the
interface to shape a totally new chart.

.. image:: visualizations__charts-default--en.jpg
    :alt: Default Chart

The above chart is the default chart for our dataset, which shows the evolution of the average number of inhabitants
per country from 2020 to 2040.

The first set of options are related to the "X" axis configuration. You can choose which field (facet) is going to be
used as the first dimension. For date and datetime fields, you can select the precision to be used (from **year** to
**minute**).

The second set of options lets you define series.

About series
~~~~~~~~~~~~

A serie is simply the aggregation of a value on the "X" axis. Think about it as a database group by.

.. image:: visualizations__charts-series--en.jpg
    :alt: Chart Series

In the example above, we've defined two series:

* The first serie represents the maximum number of inhabitants per country.
* The second serie represents the sum of the number of inhabitants.

.. image:: visualizations__charts-display--en.jpg
    :alt: Chart Display

Series can be represented in various ways:

* Line
* Spline
* Range
* Range spline
* Column range
* Area
* Area spline
* Column chart
* Bar chart
* Pie chart
* Scatter plot

In the case of *range*, *range spline* and *column range* representations, you may configure the lower and upper
boundaries with two different series.

The following aggregation methods are available:

* Count (simply counts the number of records)
* Average
* Minimum
* Maximum
* Standard deviation
* Sum
* Percentile (you'll need to choose the percentile value, from 1 to 100 - 50 for the median)
* Constant value (can be used to represent thresholds)

You can also choose which numerical field shall be aggregated (except for the *Count* and *Constant value* functions).
And you can on the same graph mix series with aggregations on different fields.


About break down
~~~~~~~~~~~~~~~~

Break down lets you introduce a second dimension in your analysis. As always, you can only break down on facets.

.. image:: visualizations__charts-breakdown--en.jpg
    :alt: Chart Break Down

When break down is activated, you can also choose the stacking mode for your series:

* **No stack** means that series will simply be displayed indenpendently
* **Normal** (as in the above sample) simply stacks series
* **Percent** will stack map the series to a 1 - 100 scale

Displaying data on a calendar
-----------------------------

The OpenDataSoft platform lets you easily create calendar views from your published datasets.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-result--en.png

       A calendar built from a dataset containing all events from OpenAgenda

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-result--fr.png

       A calendar built from a dataset containing all events from OpenAgenda

Datasets requirements
~~~~~~~~~~~~~~~~~~~~~

For the calendar view, each record of your dataset is a different event. These events must contain a start time, an end
time and a title. Which means your dataset must have two datetime fields and a text field for the calendar view to be
available.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-processing-settings--en.png

       2 fields set as datetime

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-processing-settings--fr.png

       2 fields set as datetime

Records without titles will be displayed on the calendar as titleless events, but missing either the start or end time
will cause the view to simply ignore the record.

Full day events
^^^^^^^^^^^^^^^

Though very simple, the "two datetime fields and a text field" requirement forces you to setup full day events as events ~
starting at 12AM on the given day and finishing a second before midnight on the same day (00:00:00 to 23:59:59).

Configuration
~~~~~~~~~~~~~

Enabling the calendar view
^^^^^^^^^^^^^^^^^^^^^^^^^^

Once you have configured two of your dataset's fields as datetimes and another field as text, you'll see the calendar
tab become available.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-tab-unavailable--en.png

       Calendar tab unavailable

    .. figure:: visualizations__calendar-tab-available--en.png

       Calendar tab available

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-tab-unavailable--fr.png

       Calendar tab unavailable

    .. figure:: visualizations__calendar-tab-available--fr.png

       Calendar tab available

It doesn't mean that your dataset is fully configured though. The view is available but not enabled by default. You'll
have to manually enable it.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-checkbox--en.png

       This checkbox will enable the calendar view

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-checkbox--fr.png

       This checkbox will enable the calendar view

Setting up events' fields
~~~~~~~~~~~~~~~~~~~~~~~~~

Once the calendar is enabled, you'll need to make sure the events' fields are well configured. You'll see that the first
text field has been selected for the title, the first datetime for the start time and the second datetime for the end
time. You may have multiple other text/datetime fields in your dataset, select here which one determine the events'
properties.

This is also where you'll be able to select the events' color.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-event-default-settings--en.png

       Default configuration for my calendar. The event's fields are pre-selected but not correct.

    .. figure:: visualizations__calendar-event-settings--en.png

       Corrected settings

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-event-default-settings--fr.png

       Default configuration for my calendar. The event's fields are pre-selected but not correct.

    .. figure:: visualizations__calendar-event-settings--fr.png

       Corrected settings

Setting up the tooltip
^^^^^^^^^^^^^^^^^^^^^^

In the calendar view, a click on a event will bring forward a tooltip containing more information about the events. You
can of course configure which fields will appear in the tooltip and their relative order. A live preview is available
on the right side.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-tooltip-settings--en.png

       Setting up the tooltip

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-tooltip-settings--fr.png

       Setting up the tooltip

For each of the tooltip's fields, the 3 following actions are available :

.. figure:: visualizations__calendar-tooltip-actions.png

   Tooltip's fields' actions

* Drag and drop to move field within tooltip
* Click to remove field from tooltip
* Click to add field to tooltip

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-tooltip-preview--en.png

       The associated live preview

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-tooltip-preview--fr.png

       The associated live preview

Sharing
~~~~~~~

Once your dataset is correctly setup and published, you can of course share this calendar with anyone having the rights
to view the calendar.

To do so, you can always copy/paste the url from your browser's address bar, but you can also use any of the 3 options
offered below the calendar itself.

1. Share the url

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-share--en.png

       The 3 sharing options, with first and foremost the url

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-share--fr.png

       The 3 sharing options, with first and foremost the url

2. Code snippet to embed the view inside any other website

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-embed--en.png

       Embed this code into any other page to display your calendar there

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-embed--fr.png

       Embed this code into any other page to display your calendar there

3. Code snippet to include in any of your dashboard or page on the platform.

.. ifconfig:: language == 'en'

    .. figure:: visualizations__calendar-widget--en.png

       Copy this code to one your dashboard on the platform

.. ifconfig:: language == 'fr'

    .. figure:: visualizations__calendar-widget--fr.png

       Copy this code to one your dashboard on the platform

