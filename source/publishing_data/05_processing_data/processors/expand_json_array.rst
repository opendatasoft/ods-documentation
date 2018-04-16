Expand JSON array processor
===========================

This processor transposes rows containing a JSON array into several rows with a new column containing each value of the array.

Setting the processor
---------------------

The parameter "iJSON rule to array" works exactly like in the "Extract from JSON" processor and should contain the array to transpose (represented with the iJSON rule ``.item``).

- If the field contains the JSON array directly, just put ``item`` as an iJSON rule.
- If the final element is an array, the iJSON rule must end with ``.item``, meaning that the reached object should be treated as an array of items in the iJSON syntax.
- If you want to keep going into the items inside the array, you can keep adding key names after the ``.item``, but be careful to check that this path is valid for every object in the array.

To set the parameters of the Expand JSON array processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Example
  * * JSON array field
    * Name of the field that holds the JSON array
    * data
  * * iJSON rule to array
    * iJSON rule to iterate in the JSON array above. An iJSON rule is built with the names of all the field from the JSON root to the data to extract, separated with a dot.
    * block.metaB
  * * Output field
    * Name of the field that will contain the extracted element
    *

Example
-------

iJSON rules to extract from the following JSON array field:

.. code-block:: JSON

    [
        {
          "metaB" : "value1",
          "int": 5,
          "boolean": false
        },
        {
          "metaB" : "value2",
          "int": 6,
          "boolean": true
        },
    ]

- ``item`` will transpose the record into 2, one with each object of the array in the "Output field" column

.. code-block:: JSON

    { "metaA": "Joe",
      "bloc" : [
            {
              "metaB" : "value1",
              "int": 5,
              "boolean": false,
              "sub" : { "sub_sub" : "sub_value"}
            },
            {
              "metaB" : "value2",
              "int": 6,
              "boolean": true,
              "sub" : { "sub_sub" : "other_sub_value"}
            },
          ]
    }

- ``bloc.item`` will transpose the record into 2, one with each object of the array in the "Output field" column
- ``bloc.item.sub`` will transpose the record into 2, one with each object inside the "sub" tag of each object of the array.
