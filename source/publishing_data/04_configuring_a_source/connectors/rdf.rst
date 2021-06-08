RDF files
=========

You can use a RDF (.rdf) file as a data source.

This platform creates records from an arbitrary RDF structure by converting all elements at a specific depth (optionally filtered by tag) to a set of records.
For each element converted to a record, attributes, enclosed tags, and content are converted to fields.
Complex data inside fields is converted to a JSON representation containing both attributes and content.

Creation
~~~~~~~~

For more information about adding a file data source, see :doc:`/publishing_data/01_creating_a_dataset/retrieving_file`.

Configuration
~~~~~~~~~~~~~

.. list-table:: XML parameters
   :header-rows: 1

   * * Name
     * Description
     * Usage
   * * Parent tags
     * Number of parents to get attributes from
   
       If the enclosing tags contain relevant attributes, use this option to add them to the records.
     * Enter the number of parent tags to get attributes from (for example, ``2``).
   * * Name of the tags to be extracted
     * If irrelevant tags are at the same depth as the extracted elements, use this option to only filter relevant tags.
     * Enter the tag to extract (for example, ``item``) in the **Name of the tags to be extracted** box. If you leave the box empty, all tags at the specified depth will be converted into records.
   * * Tag depth
     * Depth of the tags that must be converted to records
     * Enter the depth of the repeated tag in the **Tag depth** box (for example, ``3``).

.. include:: ../../../_includes/connectors_extractfilename.rst

Technical specifications
~~~~~~~~~~~~~~~~~~~~~~~~

Field creation
^^^^^^^^^^^^^^

The policy for creating fields from an item is defined as shown in the following examples.

.. code-block:: xml
    :linenos:

    <rows>
      <data attribute="attribute value" other_attribute="other attribute value">
        <indicator>GDP per capita</indicator>
        <country>Andean Region</country>
        <decimal>0</decimal>
      </data>
      <data attribute="2nd data tag">Text only</data>
    </rows>

+-----------------+-----------------------+----------------+---------------+-------------+---------------+
| **attribute**   | **other_attribute**   | **indicator**  | **country**   | **decimal** | **content**   |
+-----------------+-----------------------+----------------+---------------+-------------+---------------+
| attribute value | other attribute value | GDP per capita | Andean Region | 0           |               |
+-----------------+-----------------------+----------------+---------------+-------------+---------------+
| 2nd data tag    |                       |                |               |             | Text only     |
+-----------------+-----------------------+----------------+---------------+-------------+---------------+

JSON representation
^^^^^^^^^^^^^^^^^^^

Complex data inside fields is converted to JSON as shown in the following example.

.. code-block:: xml
    :linenos:

    <mydocument has="an attribute">
      <and>
        <many>elements</many>
        <many>more elements</many>
      </and>
      <plus a="complex">
        element as well
      </plus>
    </mydocument>


.. code-block:: json

    {
        "mydocument": {
            "@has": "an attribute",
            "and": {
                "many": [
                    "elements",
                    "more elements"
                ]
            },
            "plus": {
                "@a": "complex",
                "#text": "element as well"
            }
        }
    }

Examples
~~~~~~~~

Example 1
^^^^^^^^^

.. code-block:: xml
    :linenos:

    <?xml version="1.0" encoding="utf-8"?>
    <wb:rows xmlns:wb="http://www.worldbank.org">
      <wb:data>
        <wb:indicator id="6.0.GDPpc">GDP per capita (2005 USD)</wb:indicator>
        <wb:country id="L5">Andean Region</wb:country>
        <wb:date>2012</wb:date>
        <wb:value>10561.668936515</wb:value>
        <wb:decimal>0</wb:decimal>
      </wb:data>
      <wb:data>
        <wb:indicator id="6.0.GDPpc">GDP per capita (2005 USD)</wb:indicator>
        <wb:country id="L5">Andean Region</wb:country>
        <wb:date>2011</wb:date>
        <wb:value>10215.3319157514</wb:value>
        <wb:decimal>0</wb:decimal>
      </wb:data>
      <wb:data>
        <wb:indicator id="6.0.GDPpc">GDP per capita (2005 USD)</wb:indicator>
        <wb:country id="L5">Andean Region</wb:country>
        <wb:date>2010</wb:date>
        <wb:value>9711.85739310366</wb:value>
        <wb:decimal>0</wb:decimal>
      </wb:data>
    </wb:rows>

In this example:

- **Tag depth** is set to ``2`` because ``wb:data`` is at the second level of the XML tree (``wb:rows/wb:data``).
- You do not need to filter tags out because all elements at this depth are records.

The resulting dataset looks like this:

+------------------------------------------------------------+-----------------------------------------+---------+------------------+------------+
| wb:indicator                                               | wb:country                              | wb:date | wb:value         | wb:decimal |
+------------------------------------------------------------+-----------------------------------------+---------+------------------+------------+
| {"#text": "GDP per capita (2005 USD)", "@id": "6.0.GDPpc"} | {"#text": "Andean Region", "@id": "L5"} | 2005    | 8154.72913271721 | 0          |
+------------------------------------------------------------+-----------------------------------------+---------+------------------+------------+
| {"#text": "GDP per capita (2005 USD)", "@id": "6.0.GDPpc"} | {"#text": "Bolivia", "@id": "BO"}       | 2009    | 5152.46337890625 | 0          |
+------------------------------------------------------------+-----------------------------------------+---------+------------------+------------+
| {"#text": "GDP per capita (2005 USD)", "@id": "6.0.GDPpc"} | {"#text": "Bolivia", "@id": "BO"}       | 2006    | 4715.9892578125  | 0          |
+------------------------------------------------------------+-----------------------------------------+---------+------------------+------------+

Example 2
^^^^^^^^^

.. code-block:: xml
    :linenos:

    <?xml version="1.0" encoding="UTF-8"?>
    <shoppingList>
        <id>abcdef123</id>
        <description>A shopping list</description>
        <basket>
            <itemCount>3</itemCount>
            <totalQuantity>19</totalQuantity>
            <item>
                <name>tomato</name>
                <quantity>10</quantity>
            </item>
            <item>
                <name>potato</name>
                <quantity>5</quantity>
            </item>
            <item>
                <name>banana</name>
                <quantity>4</quantity>
            </item>
        </basket>
    </shoppingList>

In this example, the XML tree is complex. As a result, the automatic parameters detection cannot guess the proper depth. You must configure the data source manually:

- **Tag depth** must be set to ``3`` because the ``item`` node is at the third level of the XML tree (``shoppingList/basket/item``).
- **Name of the tags to be extracted** must be set to ``item`` because ``itemCount`` and ``totalQuantity`` are also at the third level but not relevant.

The resulting dataset looks like this:

+--------+----------+
| name   | quantity |
+--------+----------+
| potato | 5        |
+--------+----------+
| banana | 4        |
+--------+----------+
| tomato | 10       |
+--------+----------+
