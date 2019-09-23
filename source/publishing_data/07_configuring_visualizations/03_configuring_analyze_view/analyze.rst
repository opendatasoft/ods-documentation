Configuring the Analyze visualization
=====================================


.. admonition:: Prerequisite
   :class: important

   For the Analyze visualization to be available, the dataset must contain at least one :ref:`date or datetime field<choosingtype>`, or a :ref:`field set as a facet<settingfacets>`.


In the edition interface of a dataset, the Visualizations > Analyze tab allows to configure the default chart of the Analyze visualization displayed in the front office, once the dataset is published on the portal.

The Analyze visualization, when available, is optional. It can be enabled or disabled using the tick box displayed right under the visualizations tabs.

.. image:: images/analyze_view_configuration.png

Above the chart preview are displayed a variety of buttons and options to configure the default chart of the Analyze visualization:

.. image:: /exploring_catalog_and_datasets/02_looking_up_a_dataset/images/chart1.png
   :alt: First line of chart configuration

- The first line is to configure the base of the chart.

  - X axis: to choose which field to use as X axis (horizontal line)
  - Max. number of points: to choose how many points should be represented on the chart
  - Default ordering: for points to be displayed in a decreasing order in the chart

.. image:: /exploring_catalog_and_datasets/02_looking_up_a_dataset/images/chart2.png
   :alt: Second line of chart configuration

- The second line is to define how the different series are represented.

  - Break down series: to separate the series into several groups
  - Stack: for series to be stacked one on top of the other
  - Add a serie: to display other series on the chart

.. image:: /exploring_catalog_and_datasets/02_looking_up_a_dataset/images/chart3.png
   :alt: Third line of chart configuration

- The third and last line is to configure series separately.

  - a scroll-down menu: to choose a chart type for the series
  - a color or color palette: to choose the color of the series
  - Y axis: to choose which field to use as Y axis (vertical line)
  - Use for ordering: for points to be displayed in a decreasing order in the chart, based on the chosen series

.. admonition:: Caution
   :class: caution

   Be careful with the default charts of distributed and/or federated datasets: if they were originally configured with custom colors, re-configure the chart with other colors otherwise it will appear blank.
