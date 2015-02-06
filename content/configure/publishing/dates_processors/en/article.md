![Date Processors](processors-date-en.jpg)

### Set Timezone
This processor can be used to force the timezone of a datetime field. This might be useful when, for instance, the source outputs timestamps with no timezone indication.

### Normalize Dates
Date normalization is one of the most commonly used processors. It allows you to parse a date in a format that would otherwise not be understood by the platform.

Simply specify the date format pattern to use in the **Date format** parameter.

A pattern is an arbitrary string containing one of the following directives.

Directive | Meaning | Example
--------- | ------- | -------
%a|Weekday as locale’s abbreviated name.|Sun, Mon, ..., Sat
%A|Weekday as locale’s full name.|Sunday, Monday, ..., Saturday
%w|Weekday as a decimal number, where 0 is Sunday and 6 is Saturday.|0, 1, ..., 6
%d|Day of the month as a zero-padded decimal number.|01, 02, ..., 31
%b|Month as locale’s abbreviated name.|Jan, Feb, ..., Dec
%B|Month as locale’s full name.	|January, February, ..., December
%m|Month as a zero-padded decimal number.|01, 02, ..., 12
%y|Year without century as a zero-padded decimal number.|00, 01, ..., 99
%Y|Year with century as a decimal number.|1970, 1988, 2001, 2013
%H|Hour (24-hour clock) as a zero-padded decimal number.|00, 01, ..., 23
%I|Hour (12-hour clock) as a zero-padded decimal number.|01, 02, ..., 12
%p|Locale’s equivalent of either AM or PM.|AM, PM
%M|Minute as a zero-padded decimal number.|00, 01, ..., 59
%S|Second as a zero-padded decimal number.|00, 01, ..., 59
%f|Microsecond as a decimal number, zero-padded on the left.|000000, 000001, ..., 999999
%j|Day of the year as a zero-padded decimal number.|001, 002, ..., 366 
%U|Week number of the year (Sunday as the first day of the week) as a zero padded decimal number. All days in a new year preceding the first Sunday are considered to be in week 0.|00, 01, ..., 53
%W|Week number of the year (Monday as the first day of the week) as a decimal number. All days in a new year preceding the first Monday are considered to be in week 0.|00, 01, ..., 53

For the directives %a, %A, %b, %B and %p, we only support representations of their values in the locale *en_US*.







