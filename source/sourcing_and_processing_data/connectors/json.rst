JSON connectors
===============

JSON is an open-standard format that uses human-readable text to transmit data objects consisting of key–value pairs. It is the most common data format to build web APIs.

As JSON documents can have a lot of different forms, there are two JSON connectors you can choose to extract your data. If the connector did not manage to fully extract a document with a complex structure, you can use one of the platform's JSON processors to complete the extraction.

JSON File
---------

This connector extracts a valid JSON document (array or object) into one dataset of several records.

- If the document is a JSON array, a record will be created for each object inside the array (the keys will be used as column names).
- If the document is a JSON object, the parameter "JSON root" should contain a dot-separated path to the array inside your object. If not provided, the connector tries ``items``.

For each item inside the array, the connector can follow another path before extracting the records thanks to the parameter "JSON object".

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
     * Path to the json array on which the connector will iterate to get the records
     * None if JSON array, "items" if JSON object
   * * JSON object
     * Relative path of the json object you want to extract (from JSON root)
     *

JSON Line
---------

This connector expects a file in which each line is a one-line JSON documents. The whole file is not a valid JSON document but each line is.

The connector supports two modes:
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
     * The connector will start processing the sheet at this line
     * 0
   * * Headers
     * Indicates first row contains field labels.
     * Yes

JSON Dict
---------

This connector extracts a valid JSON document (array or object) into one dataset of several records.

It expects a JSON object where each key contains a record, and create records with one column to hold the key, and one column for each attribute of the corresponding object (or a single column named "value" if the value is a string instead of an object).

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
     * ijson path to the object that contains the records
     * start from the root if empty, ijson path like "result.datasets", or "item" to iterate in an array
   * * Key field name
     * Label of the column that holds the key value
     *

Example 1
~~~~~~~~~

.. code-block:: json

  {
    "2016": {
      "type1": {
        "price": 10,
        "color": "blue",
        "available": true
      },
      "type2": {
        "price": 9,
        "color": "red",
        "available": true
      }
    },
    "2015": {
      "type1": {
        "price": 10.5,
        "color": "teal",
        "available": true
      },
      "type2": {
        "price": 9.1,
        "color": "crimson",
        "available": true
      }
    }
  }


With an empty JSON root, results in:

+------+-----------------------------------------------------+-------------------------------------------------------+
| key  | type1                                               | type2                                                 |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2016 | {"color": "blue", "available": true, "price": 10}   | {"color": "red", "available": true, "price": 9}       |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2015 | {"color": "teal", "available": true, "price": 10.5} | {"color": "crimson", "available": true, "price": 9.1} |
+------+-----------------------------------------------------+-------------------------------------------------------+

Example 2
~~~~~~~~~

.. code-block:: json

  {
    "results": {
      "datasets": [{
          "abc": {
            "title": "A B C",
            "description": "A description about ABC"
          }
        },
        {
          "xyz": {
            "title": "D E F",
            "description": "Another description"
          }
        }
      ]
    }
  }

For this complex JSON file, the correct JSON root is ``results.datasets.item``.

- ``results.datasets`` makes us move inside the JSON file to the array
- ``item`` means to iterate inside the array and get each object

+-----+-------------------------+-------+
| key | description             | title |
+-----+-------------------------+-------+
| abc | A description about ABC | A B C |
+-----+-------------------------+-------+
| xyz | Another description     | D E F |
+-----+-------------------------+-------+
