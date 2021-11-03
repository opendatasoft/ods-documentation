Adding a chart
==============

You can use charts to create a graphic representation of your data.

Step 1: Select the block type
-----------------------------

You need to define the block type before you configure the content you want to add.

1. From the preview pane, click the block you want to edit.
2. From the left side pane, select **Chart** as the block type.
3. Click **Next**.

If you change your mind, you can change the block type afterward.
The block configuration will be reset after you change the block type.

Step 2: Select the dataset
--------------------------

Select the source dataset to create a graphic representation of the data.

.. admonition:: Note
    :class: note
 
    The dataset is only selected for the current block.
    If you add some content to another block afterward, you will need to select an input dataset again.

1. From the left side pane, select the desired dataset from the list.

   A preview of the first 20 records opens in the preview pane.

   <PLACEHOLDER_SCREENSHOT_DATASET_RECORDS_PREVIEW>

2. Click **Next** to continue with the configuration.

Step 3: Select the visualization type
-------------------------------------

After selecting a block type and the input dataset, you can now select the type of chart to be inserted into the block.

1. From the left side pane, select the desired type of chart.
2. Click **Next** to continue with the configuration.

Step 4: Configure the visualization parameters
----------------------------------------------

1. From the left side pane, configure the axes of the chart:

   a. Select the dataset field to be used on the X-axis (aka category or horizontal axis). This axis is generally used to categorize data. When using a date field, select the time scale to be used.
   b. Select the function to apply and the field to be used on the Y-axis (aka values or vertical axis). This axis is generally used to measure data.

2. (optional) You can also refine the data shown on the chart:

   a. Under Y-axis, click **Add a condition**.
   b. Select the field from the input dataset.
   c. Select an operator. Depending on the field type, the available operators may vary.
   d. Click **Confirm**.

   For more information, see :ref:`refining-data`.

3. (optional) To configure the number of results to be displayed, toggle on **Limit the number of results to display** and enter the number of results to be displayed.
4. (optional) To configure how results are sorted, select **Descending order** or **Ascending order** from the **Sort results** drop-down list.
5. Click **Next** to continue with the configuration.

Step 5: Configure the visualization styles
------------------------------------------

The Studio includes several predefined layouts for charts to display the appropriate data.
These layouts help you control how the chart appears on the page to make it easier to understand.

1. Select a layout.
2. Enter the required details in the corresponding fields (chart title, chart subtitle, X-axis label, and Y-axis label). Those details are mandatory because they help the future visitors to read and understand your charts better. They are also used by screenreader softwares for accessibility purposes.
3. Click **Finish**.

You can see an overview of the block configuration parameters in the side pane.

<PLACEHOLDER_SCREENSHOT_CHART_PARAMS_OVERVIEW>

4. Check the block configuration and click **Save**.

Your chart appears in the preview pane.

<PLACEHOLDER_SCREENSHOT_KPI_IN_THE_PREVIEW_PANEL>

Once you completed the block configuration, you can click the block again in the preview pane to check and edit the chart parameters in the side pane.
