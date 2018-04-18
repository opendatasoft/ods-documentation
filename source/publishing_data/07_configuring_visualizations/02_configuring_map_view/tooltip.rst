Configuring the tooltip
=======================

In order to display information on a map, on a image or in a calendar, you can configure a tooltip. You can use, and configure, the standard tooltip or customize it more precisely using a custom HTML tooltip. A custom tooltip is slightly more time consuming but it is a good way to leverage your data. To switch from the standard tooltip configuration interface to this custom tooltip view, select Custom HTML template from the tooltip type dropdown menu.

.. ifconfig:: language == 'en'

    .. figure:: images/tooltip__select-type--en.jpg

       Setting up the tooltip

.. ifconfig:: language == 'fr'

    .. figure:: images/tooltip__select-type--fr.jpg

       Setting up the tooltip

Standard tooltip
----------------

You can of course configure which fields will appear in the tooltip and their relative order. A live preview is available
on the right side.

.. ifconfig:: language == 'en'

    .. figure:: images/tooltip__settings--en.png

       Setting up the tooltip

.. ifconfig:: language == 'fr'

    .. figure:: images/tooltip__settings--fr.png

       Setting up the tooltip

For each of the tooltip's fields, the 3 following actions are available :

.. figure:: images/tooltip__actions.png

   Tooltip's fields' actions

* Drag and drop to move field within tooltip
* Click to remove field from tooltip
* Click to add field to tooltip

.. ifconfig:: language == 'en'

    .. figure:: images/tooltip__preview--en.png

       The associated live preview

.. ifconfig:: language == 'fr'

    .. figure:: images/tooltip__preview--fr.png

       The associated live preview

Custom HTML tooltip
-------------------

When you select `Custom HTML tooltip` an HTML editor appears. This is very similar to writing "pages" in your domain; you have access to every `ODS Widget <http://opendatasoft.github.io/ods-widgets/docs/>`_ and you can even integrate other visualizations inside the tooltip. You can even use the  :doc:`grid layout classes</customizing_look_and_feel/07_designing_responsive_portal/responsive>`.

.. ifconfig:: language == 'en'

   .. figure:: images/tooltip__custom-tooltip--en.jpg

      An example of a custom tooltip.

.. ifconfig:: language == 'fr'

   .. figure:: images/tooltip__custom-tooltip--fr.jpg

      An example of a custom tooltip.

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

Here is the code from the example above:

.. code-block:: html

    <ul style="display: block; list-style-type: none; color: #2c3f56; padding:0; margin:0;">
        <li><strong style="font-size:17px;">{{ record.fields.name | limitTo:25 }}</strong></li>
        <li>{{ record.fields.organisation | limitTo:40}}</li>
        <li ng-if="record.fields.description" style="color:#bbb;">{{ record.fields.description | limitTo:140 }}</li>
        <li ng-if="!record.fields.description" style="font-style:italic;color:#bbb;">No description provided<br/></li>
        <br/>
        <li ng-if="record.fields.has_issue == 'TRUE'" style="color:#ec643c;"><i class="fa fa-exclamation-triangle"></i> An issue has been reported on this  portal</li>
        <li>
            <ul style="list-style-type: none; color: #2c3f56;padding:0 0 15px;margin-top:0px;">
                <li style="display: inline;float:left;"><strong style="font-size:13px;"><a ng-href="https://docs.google.com/forms/  d/1-9m30rCw492oGCB7Pg3aOsZ-q03KBeJsw_GZFLqIvNE/   viewform?entry.1740897944={{record.fields.name}}&amp;entry.1624486384={{record.fields.url}}&amp;entry.462034829&amp;entry.848235220"   style="color:#ccc;" target="_blank">Report an issue </a></strong><i class="fa fa-external-link" style="color:#ccc;"></i></li>
                <li style="display: inline;float:right;"><strong style="font-size:13px;"><a ng-href="{{record.fields.url}}" style="color:#ec643c;"  target="_blank">Open this portal </a></strong><i class="fa fa-external-link" style="color:#ec643c;"></i></li>
            </ul>
        </li>
    </ul>

If you want to display an image from one of your dataset's ``file`` fields, you can
use the ``ods-record-image`` widget.

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
