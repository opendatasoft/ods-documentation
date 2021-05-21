JSON connectors
===============

JSON is an open-standard format that uses human-readable text to transmit data objects consisting of key-value pairs. It is the most common data format to build web APIs.

As JSON documents can have a lot of different forms, there are there JSON connectors to extract data from a JSON file:

* the JSON File connector
* the JSON Line connector
* the JSON Dict connector


.. admonition:: Note
   :class: note

   If the connector does not fully extract a document with a complex structure, use one of the JSON processors to complete the extraction.


JSON File
---------

The JSON File connector extracts a valid JSON document (array or object) into one dataset of several records:

* If the document is a JSON array, a record will be created for each object inside the array (the keys will be used as column names).
* If the document is a JSON object, the "JSON root" parameter should contain a dot-separated path to the array inside your object. If not provided, the connector tries ``items``.

For each item inside the array, the connector can follow another path before extracting the records with the parameter "JSON object".

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, boolean, string)
* JSON object: used as-is
* Array:

  * If the array contains JSON objects, it is used as-is.
  * If the array contains strings, a multivalued field is created with all the strings separated by a semicolon (``;``).

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: JSON parameters
   :header-rows: 1
   :name: json-parameters

   * * Name
     * Description
     * Usage
   * * JSON root
     * `ijson <https://pypi.org/project/ijson/>`_ path to the JSON array that contains the objects to be extracted as dataset records

       ijson is a syntax to navigate inside JSON objects. It consists of separating the attribute names with dots (for example, `content.trains`). More features are available for advanced users.

     * If the JSON array is at the root of the document, leave the **JSON root** box empty. If the JSON file is a JSON object, enter the ijson path to the array in the **JSON root** box.
   * * JSON object
     * Relative path to the JSON object to extract
     * After setting the JSON root, if the preview shows irrelevant columns, and that the JSON object has been extracted as the value of one column, enter the name of that column in the **JSON object** box.

.. include:: ../../../_includes/connectors_extractfilename.rst

Examples
~~~~~~~~

Example 1:

.. code-block:: json

  [
   {
       "name": "Agra Express",
       "origin": "Agra Cantt",
       "destination": "New Delhi"
   },
   {
       "name": "Gour Express",
       "origin": "Balurghat",
       "destination": "Sealdah"
   }
  ]

In this JSON file, the JSON array is directly at the root. You can leave the **JSON root** box empty.

The resulting dataset will be:

+--------------+------------+-------------+
| name         | origin     | destination |
+--------------+------------+-------------+
| Agra Express | Agra Cantt | New Delhi   |
+--------------+------------+-------------+
| Gour Express | Balurghat  | Sealdah     |
+--------------+------------+-------------+

.. admonition:: Note
  :class: note

  The column order may vary.

Example 2:

.. code-block:: json

  {
   "filename": "trains.json",
   "content": {
       "trains": [
           {
               "id": 123,
               "info": {
                   "name": "Agra Express",
                   "origin": "Agra Cantt",
                   "destination": "New Delhi"
               }
           },
           {
               "id": 555,
               "info": {
                   "name": "Gour Express",
                   "origin": "Balurghat",
                   "destination": "Sealdah"
               }
           }
       ]
   }
  }

For this complex JSON file, the correct JSON root is ``content.trains``.
If ``content.trains`` is set as the JSON root, the resulting dataset will be:

+-----+------------------------------------------------------------------------------+
| id  | info                                                                         |
+-----+------------------------------------------------------------------------------+
| 123 | {"origin": "Agra Cantt", "destination": "New Delhi", "name": "Agra Express"} |
+-----+------------------------------------------------------------------------------+
| 555 | {"origin": "Balurghat", "destination": "Sealdah", "name": "Gour Express"}    |
+-----+------------------------------------------------------------------------------+

To only extract the ``info`` JSON objects, and skip the ``id`` number, the correct JSON object is ``info``.
If ``info`` is set as a JSON object, the resulting dataset will be:

+--------------+------------+-------------+
| name         | origin     | destination |
+--------------+------------+-------------+
| Agra Express | Agra Cantt | New Delhi   |
+--------------+------------+-------------+
| Gour Express | Balurghat  | Sealdah     |
+--------------+------------+-------------+


JSON Line
---------

The JSON Line connector expects a file in which each line is a one-line JSON document. The whole file is not a valid JSON document but each line is.

The connector supports 2 modes:

    * One JSON array on each line (or one array altogether)
    * One JSON object on each line

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, string)
* Array: used as-is
* JSON object: used as-is

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Configuration
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, this option is toggled off. Toggle on this option to extract the file name in an additional column.
   * * First line number
     * For files that do not start at the first line, it is possible to define which line is considered the first one. The lines above will be skipped from the dataset.
     * By default, the dataset starts at line 1. Enter the number of the line that should be considered the beginning of the dataset.
   * * Headers
     * For files whose first line contains field names
     * By default, this option is toggled on. It makes the values of the first line field labels. Toggle off this option if the first line doesn't contain field names but data: the field labels will then be empty by default.


JSON Dict
---------

The JSON Dict connector extracts a valid JSON document (array or object) into one dataset of several records.

The connector expects a JSON object where each key contains a record.
The connector then creates records with:

* one column to hold the key
* one column for each attribute of the corresponding object (or a single column named "value" if the value is a string instead of an object).

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, bool, string)
* JSON object: will be used as-is
* Array:

  * If the array contains JSON objects, it is used as-is.
  * If the array contains strings, a multivalued field is created with all the strings separated by a semicolon (``;``).

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: Configuration
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Extract filename
     * Creates a new column with the name of the source file.
     * By default, this option is toggled off. Toggle on this option to extract the file name in an additional column.
   * * JSON root
     * `ijson <https://pypi.org/project/ijson/>`_ path to the JSON array that contains the objects to be extracted as dataset records

       ijson is a syntax to navigate inside JSON objects. It consists of separating the attribute names with dots (for example, `content.trains`). More features are available for advanced users.

     * If the JSON array is at the root of the document, leave the **JSON root** box empty. If the JSON file is a JSON object, enter the ijson path to the array in the **JSON root** box.
   * * Key field name
     * Label of the "key" column
     * The default value is "key". Enter the new label of the "key" column in the **Key field name** box. It will modify both the label and the technical identifier of the column.

Examples
~~~~~~~~

Example 1:

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


If you leave the **JSON root** box empty, the resulting dataset will be:

+------+-----------------------------------------------------+-------------------------------------------------------+
| key  | type1                                               | type2                                                 |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2016 | {"color": "blue", "available": true, "price": 10}   | {"color": "red", "available": true, "price": 9}       |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2015 | {"color": "teal", "available": true, "price": 10.5} | {"color": "crimson", "available": true, "price": 9.1} |
+------+-----------------------------------------------------+-------------------------------------------------------+

Example 2:

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

- ``results.datasets`` leads to the array
- ``item`` iterates inside the array and gets each object

+-----+-------------------------+-------+
| key | description             | title |
+-----+-------------------------+-------+
| abc | A description about ABC | A B C |
+-----+-------------------------+-------+
| xyz | Another description     | D E F |
+-----+-------------------------+-------+
