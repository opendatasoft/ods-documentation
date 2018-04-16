Extract from JSON processor
===========================

This processor extracts values from a field containing a JSON object following a list of iJSON rules.

It creates target columns for the extracted data that are automatically named like the iJSON rules but replacing dots with underscores. For each iJSON rule, a column is created with the extracted value.

The processor doesn't support iJSON rules that lead to an array (containing a ``.item`` in the rule).

Setting the processor
---------------------

To set the parameters of the Extract from JSON processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Example
  * * Field
    * Name of the field that holds the JSON object
    * data
  * * iJSON rules
    * iJSON rules to apply to extract data from the JSON object above. An iJSON rule is built with the names of all the field from the JSON root to the data to extract, separated with a dot.
    * block.metaB


Example
-------

The JSON object below is into a text field:

.. code-block:: JSON

    { "metaA": "Joe",
      "bloc" : {
            "metaB" : "valueB",
            "int": 5,
            "boolean": false
          },
      "sub" : { "sub_sub" : "sub_value"}
    }

* you will be able to extract the value ``Joe`` with this rule : ``metaA``
* you will be able to extract the value ``valueB`` with this rule : ``bloc.metaB``
* you will be able to extract the value ``5`` with this rule : ``bloc.int``
* you will be able to extract the value ``sub_value`` with this rule : ``sub.sub_sub``
* The rule ``bloc`` will extract the JSON object:

    .. code-block:: JSON

        {
            "metaB" : "valueB",
            "int": 5,
            "boolean": false
        }
