# Processors

## Geo Processors

![Geo Processors](processors-geo-en.jpg)

### Normalize Projection Reference
This processor can be used to handle a **Geo Point 2D** with a projection system different from [WGS84](http://en.wikipedia.org/wiki/WGS_84) field. It takes as a parameter the name of the field as well as the [EPSG](http://spatialreference.org/ref/epsg/) code of the source coordinates system. The field's value is replaced with its WGS84 representation.

For instance, if you set the EPSG code to `27572`, the processor will consider that the original geo field contains coordinates expressed in [Lambert Zone II](http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/).

Note that the input must be expressed with the same logic as a WGS84 geo coordinate: `Y,X`.

### Country Code to Geo Coordinates
This processor uses a country [ISO code](http://en.wikipedia.org/wiki/ISO_3166-1) to produce a geo coordinate.

### Zip Code to Geo Coordinates
This processor uses a post code to produce a geo coordinate. It is currently only implemented for French post codes.

### INSEE Code to Geo Coordinates
This processor uses French INSEE code to produce a geo coordinate.

### Convert Degrees
This processor converts a degrees, minutes, seconds geo coordinate to a standard geo coordinate.

The following formats can be converted:

- 48° 51′ 24″ Nord2° 21′ 07″ Est
- 48° 51′ 24″N 2° 21′ 07″ E
- 48° 51′ 24″ 2° 21′ 07″
- +48° 51′ 24″ +2° 21′ 07″
- N48° 51′ 24″ E2° 21′ 07″
- 48°;2°

The signs can be:

<table>
<tr><th>Type</th><th>Signs</th></tr>
<tr><td>North/South</td><td>+, -, N, S, Nord, North, Sud, South</td></tr>
<tr><td>East/West</td><td>+, -, E, O, W, Est, East, Ouest, West</td></tr>
<tr><td>Coordinate separator</td><td>' ', ';', '/'</td></tr>
<tr><td>Degree mark</td><td>'°', '^', '*'</td></tr>
<tr><td>Minute mark</td><td>"'", '′'</td></tr>
<tr><td>Second mark</td><td>'"', '″'</td></tr>
</table>

### IP Address to Geo Coordinates
This processors allows you to geocode an IP address. It uses the [GeoIP](http://geolite.maxmind.com) database.

### Geocode with Google
This processor allows you to geocode full text addresses by using the Google geocoding API. You need to possess a Google API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if you plan to use it.

### Geocode with ArcGIS
This processor allows you to geocode full text addresses by using the ArcGIS geocoding API. You need to possess an ArcGIS API key to do so. This processor is not activated by default. Please contact the OpenDataSoft support team if you plan to use it.

## Dates Processors

![Date Processors](processors-date-en.jpg)

### Set Timezone
This processor can be used to force the timezone of a datetime field. This might be useful when, for instance, the source outputs timestamps with no timezone indication.

### Normalize Dates
Date normalization is one of the most commonly used processors. It allows you to parse a date in a format that would otherwise not be understood by the platform.

Simply specify the date format pattern to use in the **Date format** parameter.

A pattern is an arbitrary string containing one of the following directives.

<table>
<tr><th>Directive</th><th>Meaning</th><th>Example</th></tr>
<tr><td>%a</td><td>Weekday as locale’s abbreviated name.</td><td>Sun, Mon, ..., Sat</td></tr>
<tr><td>%A</td><td>Weekday as locale’s full name.</td><td>Sunday, Monday, ..., Saturday</td></tr>
<tr><td>%w</td><td>Weekday as a decimal number, where 0 is Sunday and 6 is Saturday.</td><td>0, 1, ..., 6</td></tr>
<tr><td>%d</td><td>Day of the month as a zero-padded decimal number.</td><td>01, 02, ..., 31</td></tr>
<tr><td>%b</td><td>Month as locale’s abbreviated name.</td><td>Jan, Feb, ..., Dec</td></tr>
<tr><td>%B</td><td>Month as locale’s full name.	</td><td>January, February, ..., December</td></tr>
<tr><td>%m</td><td>Month as a zero-padded decimal number.</td><td>01, 02, ..., 12</td></tr>
<tr><td>%y</td><td>Year without century as a zero-padded decimal number.</td><td>00, 01, ..., 99</td></tr>
<tr><td>%Y</td><td>Year with century as a decimal number.</td><td>1970, 1988, 2001, 2013</td></tr>
<tr><td>%H</td><td>Hour (24-hour clock) as a zero-padded decimal number.</td><td>00, 01, ..., 23</td></tr>
<tr><td>%I</td><td>Hour (12-hour clock) as a zero-padded decimal number.</td><td>01, 02, ..., 12</td></tr>
<tr><td>%p</td><td>Locale’s equivalent of either AM or PM.</td><td>AM, PM</td></tr>
<tr><td>%M</td><td>Minute as a zero-padded decimal number.</td><td>00, 01, ..., 59</td></tr>
<tr><td>%S</td><td>Second as a zero-padded decimal number.</td><td>00, 01, ..., 59</td></tr>
<tr><td>%f</td><td>Microsecond as a decimal number, zero-padded on the left.</td><td>000000, 000001, ..., 999999</td></tr>
<tr><td>%j</td><td>Day of the year as a zero-padded decimal number.</td><td>001, 002, ..., 366</td></tr>
<tr><td>%U</td><td>Week number of the year (Sunday as the first day of the week) as a zero padded decimal number. All days in a new year preceding the first Sunday are considered to be in week 0.</td><td>00, 01, ..., 53</td></tr>
<tr><td>%W</td><td>Week number of the year (Monday as the first day of the week) as a decimal number. All days in a new year preceding the first Monday are considered to be in week 0.</td><td>00, 01, ..., 53</td></tr>
</table>

For the directives %a, %A, %b, %B and %p, we only support representations of their values in the locale *en_US*.

## Numerical Processors

![Num Processors](processors-num-en.jpg)

### Expression
This processor makes it possible to write complex expression patterns using field values.

The expression processor can work with both textual content and numerical content.

Literal values can be either explicit literals, such as `"this is some text"`, or `2` as well as field names, such as `price`.

To enter expression mode, tap a `=` in the expression field box. If you do not, the expression will be interpreted as pure textual content.

In expression mode, strings must be double quoted (`"foo"`).

The following unary, binary and ternary operators are available:

<table>
<tr><th>Operator type</th><th>Operators</th></tr>
<tr><td>Unary operators</td><td>+, -, not, ! (not) , ! (factorial), ^ (power)</td></tr>
<tr><td>Binary operators</td><td>+, -, *, /, % (euclidean division), and, &&, or, ||, >, <, >=, <=, == (evaluates to `True` or `False`), & (concatenation of strings, evaluates to a string)</td></tr>
<tr><td>Ternary operators</td><td>op1 ? op2 : op3 (conditional statement)</td></tr>
</table>

Examples:

<table>
<tr><th>Expression</th><th>Result</th></tr>
<tr><td>1 + 1</td><td>2</td></tr>
<tr><td>-3 + 1</td><td>-2</td></tr>
<tr><td>3!</td><td>6</td></tr>
<tr><td>2^3</td><td>8</td></tr>
<tr><td>1 > 2</td><td>False</td></tr>
<tr><td>1 >= 1</td><td>True</td></tr>
<tr><td>1 >= 1 ? 2 : 3</td><td>2</td></tr>
<tr><td>price * 2</td><td>24 (if price is a field valued to 12)</td></tr>
<tr><td>"foo" & "," & "bar"</td><td>foo,bar</td></tr>
</table>

A rich set of functions is also available

<table>
<tr><th>Function type</th><th>Functions</th></tr>
<tr><td>Without operand</td><td>now
<tr><td>Single operand</td><td>sin, asin, asinh, cos, acos, acosh, tan, atan, atanh, ceil, abs, factorial, floor, exp, log, log10, sqrt, degrees, radians, sigmoid, gamma, round, trunc, touppercase, upper, tolowercase, lower, capitalize_all, capitalize, isupper, islower, isdecimal, isdigit, isnumeric, isalnum, isalpha, random, length, normalize (unicode), dayofweek, year, month, hour, minute, second, microsecond</td></tr>
<tr><td>Two operands</td><td>pow, max, min, mod, div, gcd, round, random, contains, endswith, startswith, dayofweek, year, month, hour, minute, second, microsecond, add_seconds, add_minutes, add_hours, add_days, add_months, add_years</td></tr>
<tr><td>Three operands</td><td>ljust, rjust, center, replace, datediff</td></tr>
</table>

Examples:

<table>
<tr><th>Expression</th><th>Result</th></tr>
<tr><td>cos(2 * pi)</td><td>1</td></tr>
<tr><td>log(e)</td><td>1</td></tr>
<tr><td>exp(log(e)) - e</td><td>0</td></tr>
<tr><td>round(2.3)</td><td>2</td></tr>
<tr><td>round(2.7)</td><td>3</td></tr>
<tr><td>ceil(2.3)</td><td>3</td></tr>
<tr><td>floor(2.3)</td><td>2</td></tr>
<tr><td>islower("aBc")</td><td>False</td></tr>
<tr><td>lower("aBc")</td><td>abc</td></tr>
<tr><td>isalnum("123")</td><td>True</td></tr>
<tr><td>capitalize("foo bar")</td><td>Foo bar</td></tr>
<tr><td>capitalize_all("foo bar")</td><td>Foo Bar</td></tr>
<tr><td>random(10)</td><td>1.80536931404</td></tr>
<tr><td>random(10, 11)</td><td>10.7280438796</td></tr>
<tr><td>ljust("4400", 5, "0")</td><td>44000</td></tr>
<tr><td>rjust("4400", 5, "0")</td><td>04400</td></tr>
<tr><td>center("4400", 6,"0")</td><td>044000</td></tr>
<tr><td>year("2014-06-07")</td><td>2014</td></tr>
<tr><td>hour("2014-06-07 17:00")</td><td>17</td></tr>
<tr><td>hour("2014-06-07 17:00", "Europe/Paris")</td><td>19</td></tr>
<tr><td>replace("abcd", "b", "e")</td><td>aecd</td></tr>
<tr><td>datediff("2014-02-28", "2015-02-28", "year")</td><td>1</td></tr>
<tr><td>datediff("2014-02-28", "2015-02-28", "month")</td><td>12</td></tr>
<tr><td>datediff("2014-02-28", "2015-02-28", "day")</td><td>265</td></tr>
<tr><td>datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "hour")</td><td>1</td></tr>
<tr><td>datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "minute")</td><td>60</td></tr>
<tr><td>datediff("2014-02-28T20:00:00Z", "2014-02-28T21:00:00Z", "second")</td><td>3600</td></tr>
<tr><td>startswith("hello', 'he')</td><td>True</td></tr>
<tr><td>startswith("hello', 'lo')</td><td>False</td></tr>
<tr><td>endswith("hello', 'he')</td><td>False</td></tr>
<tr><td>endswith("hello', 'lo')</td><td>True</td></tr>
<tr><td>add_months("2014-11-14", "3")</td><td>2015-02-14</td></tr>
</table>

## Text Processors

![Text Processors](processors-text-en.jpg)

### Replace Regexp
This processor can be used to replace a random regular expression pattern by new content. See <http://en.wikipedia.org/wiki/Regular_expression> for more details on how to write a regular expressions.

### Extract Text
This processor can be used to extract an arbitrary pattern expressed as a regular expression out of a string using sub matching.

The syntax of the sub-matching expression to specify is the following: `(?P<NAME>REGEXP)`. Where:

* Name is the name of a new field which will receive the result of the extraction
* REXGEXP is the submatch expression

For example, let's assume that you want to extract a street name out of an address. That is, for the address

    600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis

you might want to extract the value `Pennsylvania Ave NW`in a field  `street_name`.

You would have to write the following expression:

    [0-9]+ (?P<street_name>.*), .*, .*, .*

And if you want to extract the street number in a field `street_number`, simply extend the previous expression:

    (?P<street_number>[0-9]+) (?P<street_name>.*), .*, .*, .*

### Normalize URL
This processor can be used to normalize a field value that should contain a valid URL. It can be used for instance when the field's value contains leading or trailing spaces, or does not have any scheme specification (in which case 'http://' is prepended to the field's value).

### Split Text
This processor can be used to split a field's value and to extract the Nth element to a new field.

### Concatenate Text
This processor can be used to concatenate two fields using a separator. You'll need to define the left and right hand sides of the concatenation, as well as the separator and the resulting field.

### Extract HTML
This processor strips HTML tags from field values.

### Extract URLs
This processor extracts URLs from HTML or text content. It extracts http and https links into a field, the links are separated by a space.

## Field Processors

![Fields Processors](processors-fields-en.jpg)

### Copy a Field
Copy a field value into another field.

### Add a Field
Add a raw new field, that can be filled by other processors.

### Skip a Record
Skip a record if one of its fields matches a specific value.

### Join Dataset
This processor allows to you to Join two datasets together. Think about the classical database join.

Let's take an example. You have two datasets:

**First dataset**: The list of taxi stations in Paris.

<table>
<tr><th>station_id</th><th>station_name</th><th>station_address</th></tr>
<tr><td>1</td><td>Tour Eiffel</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>2</td><td>Rennes - Montparnasse</td><td>1 place du dix huit Juin 1940, 75006 Paris</td></tr>
</table>

The name of this dataset is **paris_taxis_stations**.

**Second dataset**: The number of taxis waiting per station in Paris.

<table>
<tr><th>station_id</th><th>number</th></tr>
<tr><td>1</td><td>10</td></tr>
<tr><td>2</td><td>15</td></tr>
</table>

The Join processor allows you to enrich the second dataset with colums coming from the first dataset.

**Resulting dataset after a Join**

<table>
<tr><td>station_id</td><td>number</td><td>station_name</td><td>station_address</td></tr>
<tr><td>1</td><td>10</td><td>Tour Eiffel</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>2</td><td>15</td><td>Rennes - Montparnasse</td><td>1 place du dix huit Juin 1940, 75006 Paris</td></tr>
</table>

It takes the following parameters:

* **Dataset URL**

   This parameter shall contain the URL of the dataset. Simple copy paste it from your web browser. Example of a valid URL: `http://opendata.paris.fr/explore/dataset/paris_taxis_stations/?tab=table`

* **Local Key**

   The local field that will be used to identify the corresponding records in the remote dataset. More than one key can be specified.

* **Remote Key**

   The remote field corresponding to the local key. This can be a list.

* **Output Fields**

   The list of fields to retrieve.

* **Retrieve All Fields**

   Set to retrieve all the fields of the remote dataset.

* **Case Sensitive**

* **Collapse Duplicates**

   In some specific cases, the remote dataset may contain more than one row matching the local key. In which case, you may want to either collapse duplicates (that is, generate a single row which will contain multi-valued fields) or not. If this parameter is set, you can specify the character to use to separate values in the generated field in the **Separator** parameter.

Let's take an example and assume that the first dataset contains two rows for the first station:   

<table>
<tr><th>station_id</th><th>station_name</th><th>station_address</th></tr>
<tr><td>1</td><td>Tour Eiffel</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>1</td><td>Quai Branly</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>2</td><td>Rennes - Montparnasse</td><td>1 place du dix huit Juin 1940, 75006 Paris</td></tr>
</table>

If **Collapse Duplicates** is set (with **Separator** set to `|`), the Join will result in:

<table>
<tr><th>station_id</th><th>number</th><th>station_name</th><th>station_address</th></tr>
<tr><td>1</td><td>10</td><td>Tour Eiffel&#124;Quai Branly</td><td>69 quai Branly, 75007 Paris&#124;69 quai Branly, 75007 Paris</td></tr>
<tr><td>2</td><td>15</td><td>Rennes - Montparnasse</td><td>1 place du dix huit Juin 1940, 75006 Paris</td></tr>
</table>

If **Collapse Duplicates** is not set, the Join will result in:

<table>
<tr><th>station_id</th><th>number</th><td>station_name</th><th>station_address</th></tr>
<tr><td>1</td><td>10</td><td>Tour Eiffel</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>1</td><td>10</td><td>Quai Branly</td><td>69 quai Branly, 75007 Paris</td></tr>
<tr><td>2</td><td>15</td><td>Rennes - Montparnasse</td><td>1 place du dix huit Juin 1940, 75006 Paris</td></tr>
</table>

This processor is not yet available by default. Please contact OpenDataSoft support team if you plan to use it, we will activate it for you.

### Transpose Fields

This processor makes it possible to transform field names into field values.

Let's take a simple example, with a dataset containing for a couple of countries the evolution of the number of inhabitants from 2020 to 2030.

The dataset initially looks like this:

<table>
<tr><th>Country name</th><th>2020</th><th>2030</th><th>2050</th></tr>
<tr><td>France</td><td>70 000 000</td><td>80 000 000</td><td>100 000 000</td></tr>
<tr><td>UK</td><td>65 000 000</td><td>70 000 000</td><td>90 000 000</td></tr>
<tr><td>USA</td><td>350 000 000</td><td>400 000 000</td><td>450 000 000</td></tr>
</table>

Publishing this dataset as is would make it difficult to draw meaningful visualizations for instance.

Let's have a look at an alternative way to represent this dataset.

<table>
<tr><th>Country Name</th><th>Year</th><th>Inhabitants</th></tr>
<tr><td>France</td><td>2020</td><td>70 000 000</td></tr>
<tr><td>UK</td><td>2020</td><td>65 000 000</td></tr>
<tr><td>USA</td><td>2020</td><td>350 000 000</td></tr>
<tr><td>France</td><td>2030</td><td>80 000 000</td></tr>
<tr><td>UK</td><td>2030</td><td>70 000 000</td></tr>
<tr><td>USA</td><td>2030</td><td>400 000 000</td></tr>
<tr><td>France</td><td>2050</td><td>100 000 000</td></tr>
<tr><td>UK</td><td>2050</td><td>90 000 000</td></tr>
<tr><td>USA</td><td>2050</td><td>450 000 000</td></tr>
</table>

With this representation, it becomes super easy to build subsets of the dataset using facets based filtering mechanism.

The **Transpose Fields** processor makes it super easy to configure this kind of transformation.

You'll need to define the following parameters:

* **Fixed fields**

  Defines the list of fields that shall be kept as is. In the above sample, this would have been *Country Name*

* **Label for title column**

  Defines the label of the new column containing the names of the fields that have been transposed. In the above sample, this would have been *Year*.

* **Label for the value column**

  Defines the label of the new column containing the former cell values. This would have been *Inhabitants* in the above sample.

* **One line**

  Make it possible to group / concat transposal results, using a specific **Separator**. With the above sample, activating the One line option and choosing ';' as a separator, th result would have been the following:

<table>
<tr><th>Country Name</th><th>Year</th><th>Inhabitants</th></tr>
<tr><td>France</td><td>2050;2020;2030</td><td>100 000 000;70 000 000;80 000 000</td></tr>
<tr><td>UK</td><td>2050;2020;2030</td><td>90 000 000;65 000 000;70 000 000</td></tr>
<tr><td>USA</td><td>2050;2020;2030</td><td>450 000 000;350 000 000;400 000 000</td></tr>
</table>
