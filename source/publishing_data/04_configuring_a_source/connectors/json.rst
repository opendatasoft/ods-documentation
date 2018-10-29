JSON connectors
===============

JSON is an open-standard format that uses human-readable text to transmit data objects consisting of key–value pairs. It is the most common data format to build web APIs.

As JSON documents can have a lot of different forms, there are 3 JSON connectors to extract data from a JSON file:

- the JSON File connector,
- the JSON Line connector,
- the JSON Dict connector.


.. admonition:: Note
   :class: note

   If the connector does not manage to fully extract a document with a complex structure, use one of the JSON processors to complete the extraction.


JSON File
---------

This connector extracts a valid JSON document (array or object) into one dataset of several records.

* If the document is a JSON array, a record will be created for each object inside the array (the keys will be used as column names).
* If the document is a JSON object, the parameter "JSON root" should contain a dot-separated path to the array inside your object. If not provided, the connector tries ``items``.

For each item inside the array, the connector can follow another path before extracting the records thanks to the parameter "JSON object".

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, bool, string)
* JSON object: will be used as-is
* Array:
    * if the array contains JSON objects, it will be used as-is
    * if it contains strings, a multivalued field will be created with all the strings separated by a semicolon (";")

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
   * * JSON root
     * Path to the JSON array that contains the objects that will become the dataset records.
     * If the JSON array is directly at the root, leave the textbox empty. If the JSON file is a JSON object, write the ijson path to the array in the textbox.

       .. admonition:: Note
          :class: note

          ijson is a syntax to navigate inside JSON objects. It consists in separating the attribute names with dots (e.g. `content.trains`). More features are available for advanced users.

   * * JSON object
     * Relative path to the JSON object to extract.
     * Once the JSON root has be set (or left empty), if the preview shows irrelevant columns, and that the JSON object has been extracted as the value of one column, write the name of that column inside the JSON object textbox.

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

In this JSON file, the JSON array is directly at the root. There is no need to fill up the JSON root configuration.

The resulting dataset will be (columns order may vary):

+--------------+------------+-------------+
| name         | origin     | destination |
+--------------+------------+-------------+
| Agra Express | Agra Cantt | New Delhi   |
+--------------+------------+-------------+
| Gour Express | Balurghat  | Sealdah     |
+--------------+------------+-------------+

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
If ``content.trains`` is set as JSON root, the resulting dataset will be:

+-----+------------------------------------------------------------------------------+
| id  | info                                                                         |
+-----+------------------------------------------------------------------------------+
| 123 | {"origin": "Agra Cantt", "destination": "New Delhi", "name": "Agra Express"} |
+-----+------------------------------------------------------------------------------+
| 555 | {"origin": "Balurghat", "destination": "Sealdah", "name": "Gour Express"}    |
+-----+------------------------------------------------------------------------------+

To only extract the ``info`` JSON objects, and skip the ``id`` number, the correct JSON object is ``info``.
If ``info`` is set as JSON object, the resulting dataset will be:

+--------------+------------+-------------+
| name         | origin     | destination |
+--------------+------------+-------------+
| Agra Express | Agra Cantt | New Delhi   |
+--------------+------------+-------------+
| Gour Express | Balurghat  | Sealdah     |
+--------------+------------+-------------+


JSON Line
---------

This connector expects a file in which each line is a one-line JSON document. The whole file is not a valid JSON document but each line is.

The connector supports 2 modes:

    * one JSON array on each line (or one array altogether)
    * one JSON object on each line

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, string)
* Array: will be used as-is
* JSON object: will be used as-is

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



JSON Dict
---------

This connector extracts a valid JSON document (array or object) into one dataset of several records.

It expects a JSON object where each key contains a record, and create records with one column to hold the key, and one column for each attribute of the corresponding object (or a single column named "value" if the value is a string instead of an object).

Supported field types
~~~~~~~~~~~~~~~~~~~~~

* Regular fields (decimal, bool, string)
* JSON object: will be used as-is
* Array:
    * if the array contains JSON objects, it will be used as-is
    * if it contains strings, a multivalued field will be created with all the strings separated by a semicolon (";")

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
   * * JSON root
     * Path to the JSON object that contains the records.
     * If the JSON object is directly at the root, leave the textbox empty. Otherwise, write the ijson path to the object in the textbox.

       .. admonition:: Note
          :class: note

          ijson is a syntax to navigate inside JSON objects. It consists in separating the attribute names with dots (e.g. `content.trains`). More features are available for advanced users.
   * * Key field name
     * Label of the "key" column.
     * By default, "key". Write the new label of the "key" column in the textbox. It will modify both the label and the technical identifier of the column.

Examples
~~~~~~~~

**Example 1:**

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


If the JSON root is left empty, the resulting dataset will be:

+------+-----------------------------------------------------+-------------------------------------------------------+
| key  | type1                                               | type2                                                 |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2016 | {"color": "blue", "available": true, "price": 10}   | {"color": "red", "available": true, "price": 9}       |
+------+-----------------------------------------------------+-------------------------------------------------------+
| 2015 | {"color": "teal", "available": true, "price": 10.5} | {"color": "crimson", "available": true, "price": 9.1} |
+------+-----------------------------------------------------+-------------------------------------------------------+

**Example 2:**

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
- ``item`` iterates inside the array and get each object

+-----+-------------------------+-------+
| key | description             | title |
+-----+-------------------------+-------+
| abc | A description about ABC | A B C |
+-----+-------------------------+-------+
| xyz | Another description     | D E F |
+-----+-------------------------+-------+
