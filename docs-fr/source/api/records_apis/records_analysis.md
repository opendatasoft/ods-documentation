# Records Analysis API

This API provides powerfull analytics features over a set of selected records. It returns analyzed results in light and easy to parse format which can used as an input of modern charting libraries such as **Highchart.js** or **D3.js**.

**API endpoint**: `/api/records/1.0/analyze`

**Query**

<table>
<tr><th>Parameter Name</th><th>Description</th></tr>
<tr><td>datasetid</td><td>Identifier of the dataset. This field is mandatory.</td></tr>
<tr><td>q</td><td>The full-text query. This parameter can be left empty, in which case no full-text filtering on the result set occurs.</td></tr>
<tr><td>geofilter.distance</td><td>Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): <code>latitude,longitude,distance</code>. Example: <code>geofilter.distance=48.8520930694,2.34738897685,1000</code></td></tr>
<tr><td>geofilter.polygon</td><td>Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84): <code>(lat1,lon1),(lat2,lon2),(lat3,lon3)</code>. Example: <code>geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)</code></td></tr>
<tr><td>refine.&lt;FACET&gt;</td><td>Facet based filtering. This parameter limits the result set to the results matching a facet value. It can be used several times for the same facet or for different facets. Examples: <code>refine.city=Paris</code>, <code>refine.city=Paris&refine.year=2013</code></td></tr>
<tr><td>exclude.&lt;FACET&gt;</td><td>Facet based filtering. This parameter excludes the results matching a facet's value from the result set. It can be used several times for the same facet or for different facets. Examples: <code>exclude.city=Paris</code>, <code>exclude.city=Paris&exclude.year=2013</code></td></tr>
<tr><td>format</td><td>Format of the response output. One of JSON (default), CSV and GeoJSONP.</td></tr>
<tr><td>callback</td><td>JSONP callback. Example: <code>format=jsonp&callback=myFunction<.</td></tr>
<tr><td>x</td><td>The name of the field on which the data aggregation will be based. This is a mandatory parameter. It allows for analyzing a subset of data according to the different values of the fields. The behavior may vary according to the field type. For **Date** and **DateTime** fields, the slices are built from the dates using the level of aggregation defined through the <code>precision</code> and <code>periodic</code> parameters. For other field types, the actual field values are used as x values.</td></tr>
<tr><td>y.&lt;SERIE&gt;.func</td><td>The definition of the analysis aggregation function. Multiple series can be computed at once, simply name this parameter with an arbitrary serie name that you may reuse for specifying the associated aggregated expression. The list of available aggregation functions is: <code>COUNT</code>, <code>AVG</code>, <code>SUM</code>, <code>MIN</code>, <code>MAX</code>, <code>STDDEV</code>, <code>SUMSQUARES</code>. These functions return the result of their execution on the expression provided in y.&lt;SERIE&gt;.expr (or simply the number of records for the <code>COUNT</code> function) for each value of x.</td></tr>
<tr><td>y.&lt;SERIE&gt;.expr</td><td>Defines the value to be aggregated. This parameter is mandatory for every aggregation function but the <code>COUNT</code> function. The &lt;SERIES&gt; parameter must have the same name as the one used for the required corresponding aggregation function. The parameter may contain the name of a numeric field in the Dataset (**Int** or **Double**), or a mathematical expression (see below to get more details on the expression language).</td></tr>
<tr><td>y.&lt;SERIE&gt;.cumulative</td><td>This parameter accepts values <code>true</code> and <code>false</code> (default). If the parameter is set to true, the results of a series are recursively summed up (<code>serie(x) = serie(x) + serie(x-1)</code>).</td></tr>
<tr><td>maxpoints</td><td>Limits the maximum number of results returned in the serie. By default there is no limit.</td></tr>
<tr><td>periodic</td><td>Used only in cases in which x is of type **Date** or **DateTime**. It defines the level at which aggregation is done. Possible values are <code>year</code> (default), <code>month</code>, <code>week</code>, <code>weekday</code>, <code>day</code>, <code>hour</code>, <code>minute</code>. This parameter will allow you, for instance, to compute aggregations on months across all years. For instance, with a value set to <code>weekday</code>, the output will be: <code>[{"x": {"weekday":0},"series1": 12}, {"x": {"weekday":1},"series1": 30}]</code>. When <code>weekday</code> is used, the generated value range from 0 to 6 where 0 corresponds to Monday and 6 to Sunday.</td></tr>
<tr><td>precision</td><td>Used only in cases in which X is of type **Date** or **DateTime**. It defines the precision of the aggregation. Possible values are <code>year</code>, <code>month</code>, <code>week</code>, <code>day</code> (default), <code>hour</code>, <code>minute</code>. If <code>weekday</code> is provided as a <code>periodic</code> parameter, the <code>precision</code> parameter is ignored. This parameter shall respect the <code>precision</code> annotation of the field. If the field is annotated with a precision set to <code>day</code>, the serie precision can at maximum be set to <code>day</code>. For Example: <code>x=event_date&periodic=year&precision=month&y.series1.func=COUNT</code> will output <code>[{"x": {"year": 2002, "month":1},"series1": 3}, {"x": {"year": 2002, "month":1},"series1": 5}]</code></td></tr>
<tr><td>sort</td><td>sorts the aggregation values according to the specified series, or to the x parameter. By default, the values are sorted in descending order, according to the x parameter. A minus sign ('-') can however be prepended to the argument to make an ascending sort. Examples: <code>x=city&y.series1.func=SUM&y.series1.expr=population&sort=-x</code>, <code>x=city&y.series1.func=SUM&y.series1.expr=population&sort=-series1</code></td></tr>
</table>

**Expression language**

An arbitrary expression can be used as the value of the definition of an aggregated.

* Classical numerical operators are available: +, -, *, /
* Parenthesis can be used to group sub expressions together
* The following functions are also available: time, sin, cos, tan, asin, acos, atan, toRadians, toDegrees, exp, log, log10, sqrt, cbrt, IEEEremainder, ceil, floor, rint, atan2, pow, round, random, abs, max, min, ulp, signum, sinh, cosh, tanh, hypot

Example: `x=espece_arbre&y.series1.func=Min&y.series1.expr=sin(height)*2`

