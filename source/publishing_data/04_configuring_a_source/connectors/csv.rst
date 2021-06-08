CSV files
=========

You can use a CSV file (.csv) as a data source.
A CSV file contains a list of fields separated either by a ``,`` character (usually for English files) or a ``;`` character (usually for French files).

You can also use similar file types:

- Tab-Separated Values (TSV) files (.tsv)
- Text files (.txt)
- DAT files (.dat)

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Encoding
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * File encoding
     * Encoding of the file

       Character encoding is the way characters are represented in a saved file. Unicode (or UTF-8) is the universal standard, but some files might be encoded in a legacy format (for example, old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, select the right encoding to apply from the list or enter it in the **Other** text box. You can use any aliases from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_.

.. list-table:: Row structure
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Field separator
     * Character used to separate fields
     * Enter the separator in the text box. The default value depends on the file format. Correct values are usually ``';'``, ``','``, ``' '`` and ``'\t'``.
   * * Escape character
     * If an escape character is found right before a separator, the latter will no longer be considered a separator. The **Escape character** configuration option avoids this situation.
     * By default, the text box is empty. If the file contains an escape character (for example, ``#`` or ``\``), enter it in the text box.
   * * Quoted fields
     * For fields which values are enclosed in double quotes.
     * By default, this option is toggled on. Toggle off the option if the field values are not enclosed in double quotes.

.. list-table:: Data start point
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * First line number
     * For files that do not start at the first line, it is possible to define which line is considered the first one. The lines above will be skipped from the dataset.
     * By default, the dataset starts at line 1. Enter the number of the line where the dataset starts.
   * * Header
     * For files whose first line contains field names
     * By default, this option is toggled on. It makes the values of the first line field labels. Toggle off this option if the first line doesn't contain field names but data: the field labels will then be empty by default.

.. include:: ../../../_includes/connectors_extractfilename.rst
