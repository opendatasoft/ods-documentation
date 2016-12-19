:orphan: true

JSON extractors
===============

JSON is an open-standard format that uses human-readable text to transmit data objects consisting of key–value pairs. It is the most common data format to build web APIs.

As JSON documents can have a lot of different forms, there are two JSON extractors you can choose to extract your data. If the extractor did not manage to fully extract a document with a complex structure, you can use one of the platform's JSON processors to complete the extraction.

JSON File
---------

This connector extracts a valid JSON document (array or object) into one dataset of several records.

- If the document is a JSON array, a record will be created for each object inside the array (the keys will be used as column names).
- If the document is a JSON object, the parameter "JSON root" should contain a dot-separated path to the array inside your object. If not provided, the extractor tries "items".

For each item inside the array, the extractor can follow another path before extracting the records thanks to the parameter "JSON object".

Supported field types
~~~~~~~~~~~~~~~~~~~~~

- regular fields like decimal, bool, string
- JSON object: will be used as-is
- array:
    - if the array contains JSON objects, it will be used as-is
    - if it contains strings, a multivalued field will be created with all the strings separated by a semicolon (";")

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * JSON root
     * Path to the json array on which the extractor will iterate to get the records
     * None if JSON array, "items" if JSON object
   * * JSON object
     * Relative path of the json object you want to extract (from JSON root)
     *

JSON Line
---------

This connector expects a file in which each line is a one-line JSON documents. The whole file is not a valid JSON document but each line is.

The extractor supports two modes:
    - One JSON array on each line (or one array altogether)
    - One JSON object on each line

Supported field types
~~~~~~~~~~~~~~~~~~~~~

- regular fields like decimal, string
- array: will be used as-is
- JSON object: will be used as-is

Configuration
~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * First line number
     * The extractor will start processing the sheet at this line
     * 0
   * * Headers
     * Indicates first row contains field labels.
     * Yes
