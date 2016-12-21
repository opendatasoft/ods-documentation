CSV connector
=============

A CSV file is a list of fields separated by a fixed separator (usually a ',' in English and a ';' in French).

File extensions
~~~~~~~~~~~~~~~

The following extensions are recognized: .csv, .tsv, .txt, .dat

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * encoding
     * The file encoding
     * OpenDataSoft uses an heuristic to guess the encoding and something the try is incorrect.

       The encoding can be manually set, we provide a list of common value (csv generated on common software on different OS).

       Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * separator
     * The fixed separator. Must be one character.
     * Correct values are usually ``';'``, ``','``, ``' '``, ``'\t'``.
   * * escapechar
     * If a separator is found right after an escape character, it will not be considered a separator.
     * ``#`` or ``\``
   * * doublequote
     * Fields values are enclosed in double quotes.
     * ``true`` or ``false``
   * * headers_first_row
     * The first row contains the headers and will be used as field name
     * ``true`` or ``false``
   * * first_row_no
     * Skip a fix number of rows at the beginning of the file
     * ``true`` or ``false``
