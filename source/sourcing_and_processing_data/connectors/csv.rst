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
   * * Encoding
     * The file encoding
     * OpenDataSoft uses an heuristic to guess the encoding and sometimes the try is incorrect.

       The encoding can be manually set, we provide a list of common value (csv generated on common software on different OS).

       Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * Separator
     * The fixed separator. Must be one character.
     * Correct values are usually ``';'``, ``','``, ``' '``, ``'\t'``.
   * * Escape character
     * If a separator is found right after an escape character, it will not be considered a separator.
     * ``#`` or ``\``
   * * Double quote
     * Fields values are enclosed in double quotes.
     * ``true`` or ``false``
   * * Headers
     * Column titles will be used as field names.
     * ``true`` or ``false``
   * * First line number
     * Skip a fix number of lines at the beginning of the file
     * number
