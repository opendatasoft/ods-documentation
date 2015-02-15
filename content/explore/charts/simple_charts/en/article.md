The OpenDataSoft platform lets you easily build charts using the published datasets. Let's first study single dataset charts.

We will use as a sample a simple dataset containing 3 fields:

* The **country** field, a *text* field defined as a *facet*
* The **year** field, a *date* field with a *year* precision and defined as a *facet*
* The **inhabitants** field, an *integer* field

![Charts Dataset](explore_charts_dataset.jpg)
    
Remember that without facets, you cannot do any data analysis! To access the charts section for you dataset, simply go the **Analysis** tab.

Note also that for the sake of simplicity, we've illustrated this article with a very small dataset. But the below also applies to datasets with millions of rows.

### A basic chart

By default, the interface displays the default chart configured by the dataset owner. You can however play with the interface to shape a totally new chart.

![Default Chart](explore_charts_default.jpg)

The above chart is the default chart for our dataset, which shows the evolution of the average number of inhabitants per country from 2020 to 2040.

The first set of options are related to the "X" axis configuration. You can choose which field (facet) is going to be used as the first dimension. For date and datetime fields, you can select the precision to be used (from **year** to **minute**).

The second set of options lets you define series.

### About series

A serie is simply the aggregation of a value on the "X" axis. Think about it as a database group by.

![Chart Series](explore_charts_series.jpg)

In the example above, we've defined two series:

* The first serie represents the maximum number of inhabitants per country.
* The second serie represents the sum of the number of inhabitants.

![Chart Display](explore_charts_display.jpg)

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

In the case of *range*, *range spline* and *column range* representations, you may configure the lower and upper boundaries with two different series.

The following aggregation methods are available:

* Count (simply counts the number of records)
* Average
* Minimum
* Maximum
* Standard deviation
* Sum
* Percentile (you'll need to choose the percentile value, from 1 to 100 - 50 for the median)
* Constant value (can be used to represent thresholds)

You can also choose which numerical field shall be aggregated (except for the *Count* and *Constant value* functions). And you can on the same graph mix series with aggregations on different fields.


### About break down

Break down lets you introduce a second dimension in your analysis. As always, you can only break down on facets.

![Chart Break Down](explore_charts_breakdown.jpg)

When break down is activated, you can also choose the stacking mode for your series:

* **No stack** means that series will simply be displayed indenpendently
* **Normal** (as in the above sample) simply stacks series
* **Percent** will stack map the series to a 1 - 100 scale