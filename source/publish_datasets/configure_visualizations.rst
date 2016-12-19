Configuring visualizations
==========================

When you create your dataset, data visualizations become available depending on
your data (for example, having geographical location enables maps). Each of
these visualizations have their own configuration panel, so that you can further
define the right appearance for your data.

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__tabs--en.png

      Not all visualizations are available for all datasets. Here only *Table*, *Map* and *Analyze* are available.

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__tabs--fr.png

      Not all visualizations are available for all datasets. Here only *Table*, *Map* and *Analyze* are available.

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

   The images view is only available when there is at least a *file* field, and
   if at least one file contained in this field is an image, or a document that
   can generate a thumbnail.


You can configure the tooltip displayed when you click on each image. This is
similar to the map view's tooltips: you can either keep a "standard" tooltip
and configure which field is the title and which fields are displayed; or you
can configure a "custom" tooltip and write the tooltip's HTML by yourself;
see `Custom HTML tooltips`_ for more information.

Analyze view
------------

.. note::

   The analyze view is available on all datasets having at least a date/datetime field or a facet.

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
You can even use the  :doc:`grid layout classes</look_and_feel/grid-layouts>`.

When the tooltip is displayed, it can access a specific ``record`` variable that is
"injected" in the tooltip. This ``record`` object contains the following properties:

- ``record.fields``: object containing all the values (e.g. ``record.fields.tree_height``)
- ``record.recordid``: unique identifier for the record
- ``record.datasetid``: identifier of the dataset

Using these properties, you can display directly values in the tooltip, or even use
them to display data from other datasets.

The schema of the dataset is also injected as a ``fields`` variable, which is
an array of field objects (you can use ``ng-repeat`` to loop over the fields).
A field object contains the following properties:

- ``field.name``: the identifier of the field, for example to find a value within ``record.fields``
- ``field.type``: the type of the field (``text``, ``decimal``, ``integer``,
  ``date``, ``datetime``, ``geo_point_2d``, ``geo_shape``)
- ``field.label``: a human-friendly label

If you want to display an image from one of your dataset's ``file`` fields, you can
use the ``ods-record-image`` widget, as in the example below.

.. code-block:: html

    <div class="row">
        <div class="col-md-6">
            <!-- Display the name of the city directly from the point that the user selected -->
            <h1>The city of {{ record.fields.city_name }}</h1>
            <!-- Display a longer description of the city -->
            <p>{{record.fields.city_description}}</p>
        </div>
        <div class="col-md-6">
            <!-- Display an image from the dataset -->
            <ods-record-image field="city_logo" record="record"></ods-record-image>
        </div>
    </div>

You can use a ``<ods-dataset-context>`` to display a visualization from another
dataset; in the following example, the data is taken from another dataset and
filtered using one of the values of the selected record.

.. code-block:: html

    <div class="my-tooltip">
        <!-- Display the name of the city directly from the point that the user selected -->
        <h1>City report : {{ record.fields.city_name }}</h1>

        <!-- Display an image from the dataset -->
        <ods-record-image field="city_logo" record="record"></ods-record-image>

        <!-- Create a context reading data from another dataset but filtered on
             the city that the user clicked on -->
        <ods-dataset-context context="alerts"
                             alerts-dataset="city-alerts-realtime"
                             alerts-parameters="{'refine.city': city_name}">
            <ods-table context="alerts"></ods-table>
        </ods-dataset-context>
    </div>

Custom view
-----------

Standard views allow your users to dive further into your datasets, but they are tools. They do not provide additional
context and do not highlight what you think are the key facts to take away. And while the *description* metadata adds a
bit of context, it is limited to pure text.

The custom view is an additional tab that lives alongside the other tabs on the dataset's page. It is an empty space
that you can use as you wish. An HTML and CSS editor enables you to write a dashboard as simple or as complex as you may
want (for more information about writing beautiful dashboard, see the
:doc:`dedicated documentation </publish_content>`) and you can even customize the title and icon of this additional tab.

.. ifconfig:: language == 'en'

   .. figure:: configure_visualizations__custom-view--en.png

      The custom view editor

.. ifconfig:: language == 'fr'

   .. figure:: configure_visualizations__custom-view--fr.png

      The custom view editor

Tab icon and title
~~~~~~~~~~~~~~~~~~

The custom title and icon will show up within your catalog page on the related dataset's card, and you'll be able to
search for datasets having a custom view set up with the *View* filter (select the *Custom view* option).

Icons are taken from the `Font awesome 4.7 icon set <http://fontawesome.io/icons/>`_ and must be specified through
their name (omitting the ``fa-`` prefix). For example, to use the `bar chart <http://fontawesome.io/icon/bar-chart/>`_
icon, whose name is ``fa-bar-chart``, you should input ``bar-chart`` in the icon field. You can also leave this field
empty, in which case it will default to the `tachometer icon <http://fontawesome.io/icon/tachometer/>`_.

Tab content
~~~~~~~~~~~

The HTML and CSS code you'll be writing for the tab content isn't isolated from the rest of the page. It is integrated
within an already rich interface and can take advantage of the existing dataset context to interact with the filters.

In order to illustrate the different possibilities, we'll use a dataset listing all `new power plant installations in
2015 in france <https://rte.opendatasoft.com/explore/dataset/registre_parc_prod_rpt/>`_ alongside their respective
power capacity, breaking them down by nature (nuclear, wind, solar...) and region.

To illustrate the relative importance of the various sources of energy within these new installations, we'll build a
treemap with the analyse tab and set this visualization in the custom tab.


.. figure:: configure_visualizations__custom-view-treemap.png

    The treemap we want to see.

The share panel at the bottom of the analyze tab gives us the following widget code for this treemap.

.. code-block:: html

    <ods-dataset-context context="registreparcprodrpt"
                         registreparcprodrpt-dataset="registre_parc_prod_rpt">
        <ods-chart>
            <ods-chart-query context="registreparcprodrpt" field-x="filiere">
                <ods-chart-serie expression-y="puissance_maximale_mw"
                                 chart-type="treemap"
                                 function-y="SUM"
                                 color="range-Accent"
                                 scientific-display="true">
                </ods-chart-serie>
            </ods-chart-query>
        </ods-chart>
    </ods-dataset-context>

We can of course copy/paste this code into the custom view's HTML code editor and it will give us the requested treemap.
However, since we're creating an independant dataset context (named `registreparcprodrpt` in this case), this treemap
will be independant from the rest of the dataset's page, and especially independant from the active filters.

This means that we can't take advantage of the existing *producer* filter to refine the treemap and see what technology
such and such company is more investing in.

.. figure:: configure_visualizations__custom-view-static-treemap.png

    The treemap in the custom view is not affected by the active filter

In order to work with the existing dataset context, we just have to plug the ``ods-chart`` widget not on a custom
context defined within the custom view but directly on the global context set for the page, which is named ``ctx``, as
such.


.. code-block:: html

    <ods-chart>
        <ods-chart-query context="ctx" field-x="filiere">
            <ods-chart-serie expression-y="puissance_maximale_mw"
                             chart-type="treemap"
                             function-y="SUM"
                             color="range-Accent"
                             scientific-display="true">
            </ods-chart-serie>
        </ods-chart-query>
    </ods-chart>

This time, the treemap will be actualized depending on the current filters, which allows for more in-depth exploring.

.. figure:: configure_visualizations__custom-view-dynamic-treemap.png

    The treemap in the custom view is now taking into account active filters

Depending on your analysis, you may want to have both static and dynamic visualizations within your custom view, and
nothing prevents you from doing so. You'll just have to plug the dynamic ones onto the ``ctx`` context and define new
``ods-dataset-context`` for static ones.
