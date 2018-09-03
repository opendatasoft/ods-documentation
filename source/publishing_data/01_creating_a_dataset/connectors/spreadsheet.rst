Spreadsheet connector
=====================

A spreadsheet is a tabular file generated from common software, like Excel, OpenOffice, LibreOffice.

File extensions
~~~~~~~~~~~~~~~

The following extensions are recognized: .xls, .xlsx, .ods.

Configuration
-------------
.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * Headers
     * Column titles will be used as field names.
     * ``true`` or ``false``
   * * First line number
     * All the rows from the beginning of the file to this line number will be skipped.
     * number
   * * Sheet number
     * The number of the sheet to work on. Can be a range with the ``[1-3]`` notation, a list of sheets separated by a ``,``, or a ``*`` (all sheets).
     * ``1`` or ``[1-3]`` or ``1,2,3`` or ``*``