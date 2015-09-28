# Query Language and Geo Filtering

Filtering features are built in the core of OpenDataSoft API engine. Many of the previously listed APIs can take as a parameter filters for constraining the list of returned datasets or records.

Note that a given filtering context can simply be copied from one API to another. For example, you can easily build a user interface which first allows the user to visually select the records their are interested in, using full text search, facets and geo filtering, and then allowing them to download these records with the same filtering context.

### Query language

The OpenDataSoft query language makes it possible to express complex boolean conditions as a filtering context.

The user query can most of the time be expressed through the `q` HTTP parameter.

#### Full-text search

The query language accepts full text queries.

If a given word or compunds is surrounded with double quotes, only exact matches are returned (modulo an accent and case insensitive match).

* `q=film` returns results that contain film, films, filmography...
* `q="film"` only returns the ones containing exactly film.

#### Boolean expressions

The query language supports the following boolean operators `AND`, `OR` and `NOT`.

Parenthesis can be used to group together expressions and alter the default priority model:

* `NOT`
* `AND`
* `OR`

Samples

* `film OR trees`
* `(film OR trees) AND paris`

#### Field queries

One of the major feature of the query language is to allow per field filtering. You can use field names as a prefix to your queries to filter the results based on a specific field's value.

**For the dataset search API**, the list of available fields corresponds exactly to available metadata. By default:

Field Name | Description
---------- | -----------
publisher | The dataset publisher
title | The dataset title
description | The dataset description
license | The dataset license
records_count | The number of records in the dataset
modified | The last modification date of the dataset
language | The language of the dataset (iso code)
theme | The theme of the dataset
references | The references for the dataset

The domain administrator might define a richer metadata template, thus giving acces to a richer set of filtering fields.

For example, one can search on public.opendatasoft.com datasets which have `Paris`in their title or description and which contain at least 50 000 records:
 
[`(title:paris OR decription:paris) AND records_count >= 50 000`](<http://public.opendatasoft.com/api/datasets/1.0/search?q=(title:paris%20OR%20decription:paris)%20AND%20records_count%20\>=%2050000>)

**For the record search APIs**, the list of available fields depend on the schema of the dataset. To fetch the list of available fields for a given dataset, you may use the search dataset or lookup dataset APIs.

For example one can search in the dataset containing the movies shooting spots in Paris in the last decade any film directed by Woody Allen: <http://public.opendatasoft.com/api/records/1.0/search?dataset=tournagesdefilmsparis2011&q=realisateur%3A%22woody+allen%22>.

Multiple operator fields can be used between the field name and the query:

* ":", "=", "==": return results whose field exactly matches the given value (granted the fields are of text or numeric type)
* ">", "<", ">=", "<=": Return results whose field values are larger, smaller, larger or equal, smaller or equal to the given value (granted the field is of date or numeric type).
* [start_date TO end_date]: Queries Records whose date is between start_date and and_date.
* 
Date formats can be specified in different formats: simple (YYYY[[/mm]/dd]) or ISO 8601 (YYYY-mm-DDTHH:MM:SS)

Examples:

* `film_date >= 2002`
* `film_date >= 2013/02/11`
* `film_date: [1950 TO 2000]`
* `film_box_office > 10000 AND film_date < 1965`


#### Query language functions	

Advanced functions can be used in the query language. Function names need to be prefixed with a sharp (`#`) sign.

Function name | Description
------------- | -----------
now | Returns the current date. This function may be called as a query value for a field. When called without an argument, it will evaluate to the current datetime: `birthdate >= #now()` returns all Records containing a birth date greater or equal to the current datetime. This function can also accept parameters, see below for the `#now`function available parameters.
null | This function may be called specifying a field name as a parameter. It returns the hits for which no value is defined for the specified field. For example `#null(birthdate)`
exact | This function makes it possible to search for records with a field exactly matching a given value. For example, `#exact(firstname, "Marie")` will return records with a field `firstname` containing exactly "Marie" and nothing else.


**Available parameters for the `#now` function**:Ò

* years, months, weeks, days, hours, minutes, seconds, microseconds: These parameters add time to the current date.

    For example: `#now(years=-1, hours=-1)` returns the current date minus a year and an hour

* year, month, day, hour, minute, second, microsecond: can also be used to specify an absolute date.

    For example: `#now(year=2001)` returns the current time, day and month for year 2001

* weekday: Specifies a day of the week. This parameter accepts either an integer between 0 and 6 (where 0 is Monday and 6 is Sunday) or the first two letters of the day (in English) followed by the cardinal of the first week on which to start the query.

    `#now(weeks=-2, weekday=1)` returns the Tuesday before last.
    
    `#now(weekday=MO(2))` returns Monday after next.

### Geo Filtering

Records search APIs accept geofilter parameters to filter in records which are located in a specific geographical area.

The following parameters may be used.

Parameter Name | Description
-------------- | -----------
geofilter.distance	| Limits the result set to a geographical area defined by a circle (coordinates of the center of the circle expressed in WGS84 and distance expressed in meters): latitude,longitude,distance: `geofilter.distance=48.8520930694,2.34738897685,1000`
geofilter.polygon | Limits the result set to a geographical area defined by a polygon (coordinates of the points expressed in WGS84 as in ()lat1,lon1),(lat2,lon2),(lat3,lon3)): `geofilter.polygon=(48.883086,2.379072),(48.879022,2.379930),(48.883651,2.386968)`