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

.. localizedimage:: images/block-dataprovider-selection.png
     :alt: Preview of a dataset's records

2. Click **Next** to continue with the configuration.

Step 3: Select the visualization type
-------------------------------------

After selecting a block type and the input dataset, you can now select the type of chart to be inserted into the block.

1. From the left side pane, select the desired type of chart.
2. Click **Next** to continue with the configuration.

Step 4: Configure the visualization parameters
----------------------------------------------

1. From the left side pane, configure the data your chart will display:

   a. The first section is used to compartimentalize the data into different categories. Those categories can be names, dates, numbers. Charts have different purposes, therefore settings may vary from one chart to another. Even though the name of this section varies (horizontal axis, sectors, categories), it always has the same effect on the chart.
   b. The second section is used to compute the data that will be projected onto the chart. Select the function to apply and the field to use. This section name may vary from chart to chart (vertical axis, or values), however it always has the same effect on the chart.

2. (optional) You can also refine the data shown on the chart:

   a. Under the second section, click **Add a condition**.
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

1. A default layout is selected to help you through the chart setting. You can change it by clicking on the card **information layout** and selecting another layout.
2. Enter the required details in the corresponding fields (chart title, chart subtitle, axis labels). Those details are mandatory because they help the future visitors to read and understand your charts better. They are also used by screenreader softwares for accessibility purposes.
3. Click **Finish**.

You can see the summary of the block configuration parameters in the side pane.

.. localizedimage:: images/block-chart-summary.png
     :alt: Summary of the chart's configuration

4. Check the block configuration and click **Save**.

Your chart appears in the preview pane.

.. localizedimage:: images/block-chart-preview.png
     :alt: Preview of the resulting chart

Once you completed the block configuration, you can click the block again in the preview pane to check and edit the chart parameters in the side pane.
