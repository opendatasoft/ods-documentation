Spreadsheet connector
=====================

The Spreadsheet (XLS, XLSX, ODS) connector is used for spreadsheet files: tabular files generated from software such as Excel, OpenOffice and LibreOffice.

The spreadsheet connector can read the following files:

- Microsoft Excel files (.xls and .xlsx),
- OpenOffice files (.ods).

.. admonition:: Important
   :class: important

   Formulas in Excel and OpenOffice files are understood by the platform. All recognized formulas will automatically be transformed into their result in the files fields.

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
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, the box is not checked. Check the box to extract filename in an added column.
   * * First line number
     * For files which do not start at the very first line, it is possible to decide which line is to be considered the first one. The lines above will be skipped from the dataset.
     * By default, the dataset starts at line 1. Indicate the number of the line that should be considered the beginning of the dataset.
   * * Headers
     * For files which first line contains column titles.
     * By default, the box is checked. It makes the values of the first line field labels. Uncheck the box if the first line doesn't contain titles but data: the field labels will then be empty by default.
   * * Sheet number
     * Number of the sheet(s) to use for the dataset.
     * Indicate which sheets to add to the dataset. Depending on the number of sheets to add, use the related notation:

       * for a range of sheets: ``[1-3]``
       * for a list of sheets ``1,2,3`` (separated with a comma)
       * for all the sheets from the spreadsheet: ``*``
