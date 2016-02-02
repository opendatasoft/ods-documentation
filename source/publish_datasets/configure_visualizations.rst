Configuring visualizations
==========================

When you create your dataset, data visualizations become available depending on
your data (for example, having geographical location enables maps). Each of
these visualizations have their own configuration panel, so that you can further
define the right appearance for your data.

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__tabs--en.png

      Not all visualizations are available for all datasets. Here only *Table, **Map* and *Analyze* are available.

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__tabs--fr.png

      Not all visualizations are available for all datasets. Here only *Table, **Map* and *Analyze* are available.

Table view
----------

.. note::

   The table view is always available on all non-empty datasets.

You can configure which fields are displayed, and in which order. Note that it
only changes the table visualization; removing a field from the table view will
not remove it from the dataset itself, and it will still be available in other
visualizations and if you export the dataset.

Map view
--------

.. note::

   The map view is only available to datasets containing at least one geo field (geo point or geo shape).

You can configure the appearance of the map itself:

- If a tooltip displays more than one item (when multiple records have the same location for example), you can set
  their relative order
- If you have more than one basemap on your domain, you can set which one is
  selected by default for this dataset (otherwise it is the first one in the list)
- The color of the shapes and points displayed on the map
- If the data is represented as points, you can configure how it is displayed:
  a simple icon, little dots, or a familiar marker

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__map-options--en.png

      The map view options

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__map-options--fr.png

      The map view options

You can also configure the tooltips displayed when you click on a point or shape
on the map. Tooltips can be either "standard" or "custom". Standard tooltips
allow you to simply choose a field to be the title of the tooltips, and which
fields are displayed. Custom tooltips allow you to write the entire tooltip's HTML;
see `Custom HTML tooltips`_ for more information.

Images view
-----------

.. note::

   The images view is only available when there is at least a *file* field.
   If you specified a *file* field but the field doesn't link to any image, the image view will return errors.

You can configure the tooltip displayed when you click on each image. This is
similar to the map view's tooltips: you can either keep a "standard" tooltip
and configure which field is the title and which fields are displayed; or you
can configure a "custom" tooltip and write the tooltip's HTML by yourself;
see `Custom HTML tooltips`_ for more information.

Analyze view
------------

.. note::

   The analyze view is available on all datasets having at least a datetime field or a facet.

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__analyze--en.png

      The analyze options

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__analyze--fr.png

      The analyze options

You can configure which chart will be displayed by default, using the same
interface and options as the visualization itself. This allows you to directly
decide which chart would be the most relevant to your users.

:doc:`Learn more about the charts interface</explore/simple_charts>`.

Calendar view
-------------

.. note::

   The calendar view is only available to datasets containing at least 2 datetime fields and a text field.

By default, the calendar view is not enabled; if your dataset has two or more
date or datetime fields, you can activate it and configure which fields represent
the start and end of the displayed items.

Once activated, you can also configure which views are available (month, week, day)
and which one is displayed by default. You can also configure which fields are
displayed in the tooltip when you click on an item.

The full list of options is detailed in length on the dedicated
:doc:`configuring a dataset for calendar view </explore/calendars>` page.

Custom HTML tooltips
--------------------

Map and images views' tooltips can be configured as entirely custom tooltips; you
are able to write the HTML code used to display each tooltip.

To switch from the standard tooltip configuration interface to this custom tooltip view, select *Custom HTML template*
from the *tooltip type* dropdown menu.

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__custom-tooltip--en.png

      An example of a custom tooltip.

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__custom-tooltip--fr.png

      An example of a custom tooltip.

This is very similar to writing "pages" in your domain; you have access to every
`ODS Widget <http://opendatasoft.github.io/ods-widgets/docs/>`_ and you can
even integrate other visualizations inside the tooltip.

When the tooltip is displayed, it can access a specific ``record`` variable that is
"injected" in the tooltip. This `record` object contains the following properties:

- ``record.fields``: object containing all the values (e.g. ``record.fields.tree_height``)
- ``record.recordid``: unique identifier for the record
- ``record.datasetid``: identifier of the dataset

Using these properties, you can display directly values in the tooltip, or even use
them to display data from other datasets.

If you want to display an image from one of your dataset's ``file`` fields, you can
use the ``ods-record-image`` widget, as in the example below.

.. code-block:: html

    <div class="my-tooltip">
        <!-- Display the name of the city directly from the point that the user selected -->
        <h1>City report : {{ record.fields.city_name }}</h1>

        <!-- Display an image from the dataset -->
        <ods-record-image field="city_logo" record="record"></ods-record-image>

        <!-- Create a context reading data from another dataset but filtered on
             the city that the user clicked on -->
        <ods-dataset-context context="alerts"
                             alert-dataset="city-alerts-realtime"
                             alert-parameters="{'refine.city': city_name}">
            <ods-table context="alerts"></ods-table>
        </ods-dataset-context>
    </div>
