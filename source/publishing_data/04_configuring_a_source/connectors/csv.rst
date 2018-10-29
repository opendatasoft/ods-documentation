CSV connector
=============

The CSV File connector is used for datasets which source is a CSV file (.csv). It is a file which contains a list of fields separated either by a ',' (usually for English files) or a ';' (usually for French files).

The CSV File connector can also read other similar files:

- TSV files (.tsv), which separator is a tab instead of a comma or semicolon,
- Text files (.txt),
- DAT files (.dat).

Creation
~~~~~~~~

See :doc:`how to source a file</publishing_data/01_creating_a_dataset/sourcing_data>`.

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Double quote
     * For fields which values are enclosed in double quotes.
     * By default, the box is not checked. Check the box if the field values are enclosed in double quotes.
   * * Encoding
     * Encoding of the file.

       .. admonition:: Note
          :class: note

          Character encoding is the way characters are represented in a saved file. Unicode (or utf-8) is the universal standard but some files might be encoded in a legacy format (e.g. old versions of Excel), which would require setting the encoding manually. On modern software, this is usually unnecessary.

     * By default, the platform uses a heuristic to guess the encoding. If the guessed encoding is not right, choose the right one among the list, or write it in the textbox. Any alias from `Python <https://docs.python.org/2/library/codecs.html#standard-encodings>`_ can be used.
   * * Escape character
     * If an escape character is found right before a separator, the latter will not be considered a separator anymore. The Escape character configuration option avoids this situation.
     * By default, the textbox is empty. In case the file contains an escape character ( e.g. ``#`` or ``\``), write it in the textbox.
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, the box is not checked. Check the box to extract filename in an added column.
   * * First line number
     * For files which do not start at the very first line, it is possible to decide which line is to be considered the first one. The lines above will be skipped from the dataset.
     * By default, the dataset starts at line 1. Indicate the number of the line that should be considered the beginning of the dataset.
   * * Headers
     * For files which first line contains column titles.
     * By default, the box is checked. It makes the values of the first line field labels. Uncheck the box if the first line doesn't contain titles but data: the field labels will then be empty by default.
   * * Separator
     * The fixed separator between the fields of the file.
     * Write the separator in the textbox. There must only be one character. The default one depends on the format of the file. Correct values are usually ``';'``, ``','``, ``' '`` and ``'\t'``.
