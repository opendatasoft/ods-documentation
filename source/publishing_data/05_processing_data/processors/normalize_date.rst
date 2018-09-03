Normalize date processor
========================

This processor allows to parse a date which format is not automatically understood by the platform.

Example: if a date is in the dd/mm/YYYY format (commonly used format in France ; for instance 09/10/2017 for October 9th 2017), the platform will by default intervert day and month, based on the ISO 8601 YYYY-mm-dd ideal format (09/10/2017 will then be understood by the platform as September 10th 2017).

.. admonition:: Note
   :class: note

   Keep in mind that the ideal date format is the ISO 8601 format, which is ``YYYY-mm-dd``.


Setting the processor
---------------------

To set the parameters of the Normalize date processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field containing the date not understood by the platform
    * yes
  * * Date format
    * Date format pattern of the misunderstood date (see **Date format pattern** indications below to fill this parameter)
    * yes


Date format pattern
-------------------

A pattern is an arbitrary string containing one of the following directives. Use these directives to write, in the Date format parameter, what is the right, current format of the date that the platform did not understand. Thanks to the processor, the platform will follow the indicated pattern to be able to understand the format of the date.

.. list-table::
   :header-rows: 1

   * * Directive
     * Meaning
     * Example
   * * %a
     * Weekday as locale’s abbreviated name
     * Sun, Mon, ..., Sat
   * * %A
     * Weekday as locale’s full name
     * Sunday, Monday, ..., Saturday
   * * %w
     * Weekday as a decimal number, where 0 is Sunday and 6 is Saturday
     * 0, 1, ..., 6
   * * %d
     * Day of the month as a zero-padded decimal number
     * 01, 02, ..., 31
   * * %b
     * Month as locale’s abbreviated name
     * Jan, Feb, ..., Dec
   * * %B
     * Month as locale’s full name
     * January, February, ..., December
   * * %m
     * Month as a zero-padded decimal number
     * 01, 02, ..., 12
   * * %y
     * Year without century as a zero-padded decimal number
     * 00, 01, ..., 99
   * * %Y
     * Year with century as a decimal number
     * 1970, 1988, 2001, 2013
   * * %H
     * Hour (24-hour clock) as a zero-padded decimal number
     * 00, 01, ..., 23
   * * %I
     * Hour (12-hour clock) as a zero-padded decimal number
     * 01, 02, ..., 12
   * * %p
     * Locale’s equivalent of either AM or PM
     * AM, PM
   * * %M
     * Minute as a zero-padded decimal number
     * 00, 01, ..., 59
   * * %S
     * Second as a zero-padded decimal number
     * 00, 01, ..., 59
   * * %f
     * Microsecond as a decimal number, zero-padded on the left
     * 000000, 000001, ..., 999999
   * * %j
     * Day of the year as a zero-padded decimal number
     * 001, 002, ..., 366
   * * %U
     * Week number of the year (Sunday as the first day of the week) as a zero padded decimal number. All days in a new year preceding the first Sunday are considered to be in week 0
     * 00, 01, ..., 53
   * * %W
     * Week number of the year (Monday as the first day of the week) as a decimal number. All days in a new year preceding the first Monday are considered to be in week 0
     * 00, 01, ..., 53

For the directives %a, %A, %b, %B and %p, we only support representations of their values in the locale *en_US*.
