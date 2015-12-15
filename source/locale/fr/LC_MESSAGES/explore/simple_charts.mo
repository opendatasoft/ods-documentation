��    0      �                F     8   d  8   �     �  d   �     I     Z     g     l     x  	   �  p   �     �  �        �     �  4   �  +   �  �   )  /   �     �     �     �  �     Z   �  	               �         �  *   �     �     �     �  :   	  -   >	  S   l	  }   �	  �   >
  I   �
  �     0     A   E  1   �  =   �  T   �  �   L  �    F   �  8     8   O     �  d   �     �                    *  	   2  p   <     �  �   �     `     m  4   z  +   �  �   �  /   r     �     �     �  �   �  Z   Z  	   �     �     �  �   �     _  *   l     �     �     �  :   �  -   �  S     }   r  �   �  I   �  �   �  0   �  A   �  1   9  =   k  T   �  �   �   **No stack** means that series will simply be displayed indenpendently **Normal** (as in the above sample) simply stacks series **Percent** will stack map the series to a 1 - 100 scale A basic chart A serie is simply the aggregation of a value on the "X" axis. Think about it as a database group by. About break down About series Area Area spline Average Bar chart Break down lets you introduce a second dimension in your analysis. As always, you can only break down on facets. Building Simple Charts By default, the interface displays the default chart configured by the dataset owner. You can however play with the interface to shape a totally new chart. Column chart Column range Constant value (can be used to represent thresholds) Count (simply counts the number of records) In the case of *range*, *range spline* and *column range* representations, you may configure the lower and upper boundaries with two different series. In the example above, we've defined two series: Line Maximum Minimum Note also that for the sake of simplicity, we've illustrated this article with a very small dataset. But the below also applies to datasets with millions of rows. Percentile (you'll need to choose the percentile value, from 1 to 100 - 50 for the median) Pie chart Range Range spline Remember that without facets, you cannot do any data analysis! To access the charts section for you dataset, simply go the **Analysis** tab. Scatter plot Series can be represented in various ways: Spline Standard deviation Sum The **country** field, a *text* field defined as a *facet* The **inhabitants** field, an *integer* field The **year** field, a *date* field with a *year* precision and defined as a *facet* The OpenDataSoft platform lets you easily build charts using the published datasets. Let's first study single dataset charts. The above chart is the default chart for our dataset, which shows the evolution of the average number of inhabitants per country from 2020 to 2040. The first serie represents the maximum number of inhabitants per country. The first set of options are related to the "X" axis configuration. You can choose which field (facet) is going to be used as the first dimension. For date and datetime fields, you can select the precision to be used (from **year** to **minute**). The following aggregation methods are available: The second serie represents the sum of the number of inhabitants. The second set of options lets you define series. We will use as a sample a simple dataset containing 3 fields: When break down is activated, you can also choose the stacking mode for your series: You can also choose which numerical field shall be aggregated (except for the *Count* and *Constant value* functions). And you can on the same graph mix series with aggregations on different fields. Project-Id-Version:  Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-15 15:12+0100
PO-Revision-Date: 2015-12-15 09:44+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: French (http://www.transifex.com/opendatasoft/documentation-5/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 **No stack** means that series will simply be displayed indenpendently **Normal** (as in the above sample) simply stacks series **Percent** will stack map the series to a 1 - 100 scale A basic chart A serie is simply the aggregation of a value on the "X" axis. Think about it as a database group by. About break down About series Area Area spline Average Bar chart Break down lets you introduce a second dimension in your analysis. As always, you can only break down on facets. Building Simple Charts By default, the interface displays the default chart configured by the dataset owner. You can however play with the interface to shape a totally new chart. Column chart Column range Constant value (can be used to represent thresholds) Count (simply counts the number of records) In the case of *range*, *range spline* and *column range* representations, you may configure the lower and upper boundaries with two different series. In the example above, we've defined two series: Line Maximum Minimum Note also that for the sake of simplicity, we've illustrated this article with a very small dataset. But the below also applies to datasets with millions of rows. Percentile (you'll need to choose the percentile value, from 1 to 100 - 50 for the median) Pie chart Range Range spline Remember that without facets, you cannot do any data analysis! To access the charts section for you dataset, simply go the **Analysis** tab. Scatter plot Series can be represented in various ways: Spline Standard deviation Sum The **country** field, a *text* field defined as a *facet* The **inhabitants** field, an *integer* field The **year** field, a *date* field with a *year* precision and defined as a *facet* The OpenDataSoft platform lets you easily build charts using the published datasets. Let's first study single dataset charts. The above chart is the default chart for our dataset, which shows the evolution of the average number of inhabitants per country from 2020 to 2040. The first serie represents the maximum number of inhabitants per country. The first set of options are related to the "X" axis configuration. You can choose which field (facet) is going to be used as the first dimension. For date and datetime fields, you can select the precision to be used (from **year** to **minute**). The following aggregation methods are available: The second serie represents the sum of the number of inhabitants. The second set of options lets you define series. We will use as a sample a simple dataset containing 3 fields: When break down is activated, you can also choose the stacking mode for your series: You can also choose which numerical field shall be aggregated (except for the *Count* and *Constant value* functions). And you can on the same graph mix series with aggregations on different fields. 