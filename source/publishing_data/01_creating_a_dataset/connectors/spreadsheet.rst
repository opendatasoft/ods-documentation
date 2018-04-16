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
     * Skip a fix number of rows at the beginning of the file.
     * ``true`` or ``false``
   * * Sheet number
     * The number of the sheet to work on. Can be a range with the ``[0-2]`` notation or a list of sheets separated by a ``,``.
     * ``0`` or ``[0-2]`` or ``0,1,2``