Spreadsheet files
=================

You can use a spreadsheet file⁠—tabular file generated from software such as Excel, OpenOffice, and LibreOffice⁠—as a data source.

The platform can read the following files:

- Microsoft Excel files (.xls and .xlsx)
- OpenOffice files (.ods)

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

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Data start point
   :header-rows: 1
   :name: data-start-point

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
