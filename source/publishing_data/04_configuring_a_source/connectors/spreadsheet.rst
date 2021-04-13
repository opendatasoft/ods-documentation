Spreadsheet connector
=====================

The Spreadsheet (XLS, XLSX, ODS) connector is used for spreadsheet files–tabular files generated from software such as Excel, OpenOffice and LibreOffice.

The spreadsheet connector can read the following files:

- Microsoft Excel files (.xls and .xlsx),
- OpenOffice files (.ods).

.. admonition:: Important
   :class: important

   The platform understands formulas in Excel and OpenOffice files. All recognized formulas will automatically be transformed into their result in the file fields.

Spreadsheet preparation for easier data loading
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

It is easier to load data from simple spreadsheets that follow good practices:

- Make sure all cells and rows contain data. Avoid blank cells and rows.
- Do not merge cells. Repeat the values in every cell instead.
- Avoid calculations (for example, sums).
- Do not freeze rows or columns.
- Do not format cells.
- Do not use one column per year but one timestamp column.


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
     * For files that do not start at the first line, it is possible to decide which line is considered the first one. The lines above will be skipped from the dataset.
     * By default, the dataset starts at line 1. Indicate the number of the line that should be considered the beginning of the dataset.
   * * Headers
     * Select this check box if the first line of your file are column headers.
     * By default, the check box is selected. It makes the values of the first line field labels. Clear the check box if the first line doesn't contain titles but data: the field labels will then be empty by default.
   * * Sheet number
     * Number of the sheet(s) to use for the dataset.
     * Indicate which sheets to add to the dataset. Depending on the number of sheets to add, use the related notation:

       * for a range of sheets: ``[1-3]``
       * for a list of sheets ``1,2,3`` (separated with a comma)
       * for all the sheets from the spreadsheet: ``*``
