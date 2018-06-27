JSON array to multivalued
=========================

This processor extracts multiple values from a field containing a JSON array and concatenates them into a multivalued field.

.. admonition:: Note
   :class: note

   The ``multivalued`` property will not be set automatically in the field, so don't forget to enable it on the field's parameters, along with the same separator as in the processor.

+-------------------------+------------------+
| Original value          | After processor  |
+-------------------------+------------------+
| ``{"a":["b","c","d"]}`` | ``b,c,d``        |
+-------------------------+------------------+

Setting the processor
---------------------

The parameter "iJSON rule to array" works exactly like in the "Extract from JSON" processor and should contain the array to concatenate (represented with the iJSON rule ``.item``).

- If the field contains the JSON array directly, just put ``item`` as an iJSON rule.
- If the final element is an array, the iJSON rule must end with ``.item``, meaning that the reached object should be treated as an array of items in the iJSON syntax.
- If you want to keep going into the items inside the array, you can keep adding key names after the ``.item``, but be careful to check that this path is valid for every object in the array.

To set the parameters of the JSON array to multivalued processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Example
  * * Field
    * Name of the field that holds the JSON array
    * data
  * * iJSON rule to array
    * iJSON rule to iterate in the JSON array above. An iJSON rule is built with the names of all the field from the JSON root to the data to extract, separated with a dot. The position of the array is indicated with the ``item`` keyword.
    * item.metaB
  * * Separator
    * Character or string used to separate the different values found
    * ,
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

- ``item.metaB``: ``value1,value2``
- ``item.int``: ``5,6``
- ``item.boolean``: ``false,true``

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

- ``bloc.item.metaB``: ``value1,value2``
- ``bloc.item.sub.sub_sub``: ``sub_value,other_sub_value``
