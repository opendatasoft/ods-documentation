The OpenDataSoft platform comes with handy data transformation features. Some of them are extensively described below (and more are coming soon).

### Geographical Mapping

#### Normalize Projection Reference
This processor can be used to handle a **Geo Point 2D** with a projection system different from [WGS84](http://en.wikipedia.org/wiki/WGS_84) field. It takes as a parameter the name of the field as well as the [EPSG](http://spatialreference.org/ref/epsg/) code of the source coordinates system. The field's value is replaced with its WGS84 representation.

For instance, if you set the EPSG code to `27572`, the processor will consider that the original geo field contains coordinates expressed in [Lambert Zone II](http://spatialreference.org/ref/epsg/ntf-paris-lambert-zone-ii/).

Note that the input must be expressed with the same logic as a WGS84 geo coordinate: `Y,X`.

#### Country Code to Geo Coordinates
This processor uses a country [ISO code](http://en.wikipedia.org/wiki/ISO_3166-1) to produce a geo coordinate.

#### Zip Code to Geo Coordinates
This processor uses a post code to produce a geo coordinate. It is currently only implemented for French post codes.

#### INSEE Code to Geo Coordinates
This processor uses French INSEE code to produce a geo coordinate.

#### IP Address to Geo Coordinates

#### Geocode with Google

#### Geocode with ArcGIS

### Dates handling

#### Normalize Date

### Numerical Operations

#### Expression
This processor makes it possible to write complex expression patterns using field values.

The expression processor can work with both textual content and numerical content.

Literal values can be either explicit literals, such as `"this is some text"`, or `2` as well as field names, such as `price`.

To enter expression mode, tap a `=` in the expression field box. If you do not, the expression will be interpreted as pure textual content. 

In expression mode, strings must be double quoted (`"foo"`). 

The following unary, binary and ternary operators are available:

Operator type | Operators
------------- | ---------
Unary operators | +, -, not, ! (not) , ! (factorial), ^ (power)
Binary operators | +, -, *, /, % (euclidean division), and, &&, or, ||, >, <, >=, <=, == (evaluates to `True` or `False`), & (concatenation of strings, evaluates to a string)
Ternary operators | op1 ? op2 : op3 (conditional statement) 

Examples:

Expression | Result
---------- | ------
1 + 1 | 2
-3 + 1 | -2
3! | 6
2^3 | 8
1 > 2 | False
1 >= 1 | True
1 >= 1 ? 2 : 3 | 2
price * 2 | 24 (if price is a field valued to 12)
"foo" & "," & "bar" | foo,bar

A rich set of functions is also available

Function type | Functions
------------- | ---------
Single operand | sin, asin, asinh, cos, acos, acosh, tan, atan, atanh, ceil, abs, factorial, floor, exp, log, log10, sqrt, degrees, radians, sigmoid, gamma, round, trunc, touppercase, upper, tolowercase, lower, capitalize_all, capitalize, isupper, islower, isdecimal, isdigit, isnumeric, isalnum, isalpha, random, length, normalize (unicode), dayofweek, year, month, hour, minute, second, microsecond
Two operands | pow, max, min, mod, div, gcd, round, random, contains, dayofweek, year, month, hour, minute, second, microsecond
Three operands | ljust, rjust, center

Examples:

Expression | Result
---------- | ------
cos(2 * pi) | 1
log(e) | 1
exp(log(e)) - e | 0
round(2.3) | 2
round(2.7) | 3
ceil(2.3) | 3
floor(2.3) | 2
islower("aBc") | False
lower("aBc") | abc
isalnum("123") | True
capitalize("foo bar") | Foo bar
capitalize_all("foo bar") | Foo Bar
random(10) | 1.80536931404
random(10, 11) | 10.7280438796
ljust("4400", 5, "0") | 44000
rjust("4400", 5, "0") | 04400
center("4400", 6,"0") | 044000
year("2014-06-07") | 2014
hour("2014-06-07 17:00") | 17
hour("2014-06-07 17:00", "Europe/Paris") | 19

### Text Transformations

#### Replace Text

#### Replace Regexp
This processor can be used to replace a random regular expression pattern by new content. See <http://en.wikipedia.org/wiki/Regular_expression> for more details on how to write a regular expressions.

#### Extract Text
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

#### Normalize URL

#### Split Text

#### Concatenate Text

#### Extract HTML

### Fields manipulation

#### Copy a Field

#### Add a Field

#### Skip a Record

#### Join Dataset
This processor allows to you to Join two datasets together. Think about the classical database join.

Let's take an example. You have two datasets:

**First dataset**: The list of taxi stations in Paris.

station_id | station_name | station_address
---------- | ------------ | ---------------
1 | Tour Eiffel | 69 quai Branly, 75007 Paris
2 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

The name of this dataset is **paris_taxis_stations**.

**Second dataset**: The number of taxis waiting per station in Paris.

station_id | number
---------- | ------
1 | 10
2 | 15

The Join processor allows you to enrich the second dataset with colums coming from the first dataset.

**Resulting dataset after a Join**

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel | 69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris


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

station_id | station_name | station_address
---------- | ------------ | ---------------
1 | Tour Eiffel | 69 quai Branly, 75007 Paris
1 | Quai Branly | 69 quai Branly, 75007 Paris
2 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

If **Collapse Duplicates** is set (with **Separator** set to `|`), the Join will result in:

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel&#124;Quai Branly | 69 quai Branly, 75007 Paris&#124;69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris

If **Collapse Duplicates** is not set, the Join will result in:

station_id | number | station_name | station_address
---------- | ------ | ------------ | ---------------
1 | 10 | Tour Eiffel | 69 quai Branly, 75007 Paris
1 | 10 | Quai Branly | 69 quai Branly, 75007 Paris
2 | 15 | Rennes - Montparnasse | 1 place du dix huit Juin 1940, 75006 Paris



