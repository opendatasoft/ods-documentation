Replace via Regexp processor
============================

This processor allows to replace or remove any part of a text, a number or a combination of both.

Setting the processor
---------------------

To set the parameters of the Replace via Regexp processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
    * Default value
  * * Field
    * Field which contains the values to replace or remove.
    * yes
    *
  * * All fields
    * If checked: all fields from the dataset are processed with the Replace via Regexp processor
    * no
    *
  * * Regular expression
    * Regular expression to determine which part of the values will be replaced or removed. See `<http://en.wikipedia.org/wiki/Regular_expression>`_ for more details on how to write a regular expressions. It is also possible to test regular expressions with an online debugger tool like `Regex101 <https://regex101.com/>`_.
    * yes
    *
  * * New value
    * If the field value determined with the regular expression is replaced, write the new value that must replace the old one. If the field value determined with the regular expression is removed, let this parameter empty.
    * no
    *
  * * Case insensitive regular expression
    * If checked: the regular expressions are case insensitive
    * no
    * false
  * * Multiline regular expression
    * If checked: each newline marks the beginning of an other line. More information about `the multiline option in the Python documentation <https://docs.python.org/2/library/re.html#re.MULTILINE>`_.
    * no
    * false
  * * '.' character match newlines
    * If checked: '.' character also encompasses newlines. More information about `the '.' character in the Python documentation <https://docs.python.org/2/library/re.html#re.DOTALL>`_.
    * no
    * false

Example
-------

In order to keep only a part of a number, the processor Replace via Regexp should be used. For example, it is possible to keep only the area code from a French zip code (e.g from 44100 [Nantes], to keep only 44 [Loire-Atlantique]).

.. ifconfig:: language == 'en'

  .. figure:: screenshots/processing__replace-regexp-en.png
    :alt: Replace Regexp

    In this example, the regular expression processor is configured with the pattern ``[0-9]{3}$``, and a replacement by nothing. The pattern means "select 3 digits from the end", with ``[0-9]`` meaning any digit, ``{3}`` meaning exactly 3 occurences, and ``$`` meaning the end of the text. These 3 digits from the end are then replaced by nothing, so only the first 2 digits will stay.

.. ifconfig:: language == 'fr'

  .. figure:: screenshots/processing__replace-regexp-fr.png
    :alt: Replace Regexp

    In this example, the regular expression processor is configured with the pattern ``[0-9]{3}$``, and a replacement by nothing. The pattern means "select 3 digits from the end", with ``[0-9]`` meaning any digit, ``{3}`` meaning exactly 3 occurrences, and ``$`` meaning the end of the text. These 3 digits from the end are then replaced by nothing, so only the first 2 digits will stay.
