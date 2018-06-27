XML connector
=============

This connector can create a dataset from an XML document.

- It creates records from an arbitrary XML structure by converting all elements at a specific depth (optionnally filtered by tag) to a set of records.
- For each element converted to a record, both attributes, enclosed tags and content are converted to fields.
- Complex data inside fields is converted to a JSON representation containing both attributes and content.

Configuration
-------------

.. list-table::
   :header-rows: 1

   * * Name
     * Description
     * Values
   * * Depth of extracted elements
     * Depth of the tags that must be converted to records
     * e.g. 3
   * * Tag of extracted elements (optional)
     * If irrelevant tags are at the same depth as extracted elements, use this option to only filter relevant tags
     * e.g. item

Field creation
--------------

The policy for creating fields from an item is defined as in the example below.

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
-------------------

Complex data inside fields is converted to JSON as per the example below.

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

Example 1
---------

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

In this examples:

- depth=2 because ``wb:data`` is the 2nd tag in its path (``wb:rows/wb:data``)
- tag filtering is not necessary because all elements at this depth are records

**Resulting dataset:**

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
---------

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

Note: the XML structure of this document is complex so automatic parameters detection won't be able to guess the proper depth. The extractor must be manually configured.

In this example:

- depth=3 because ``item`` is the 3rd tag in its path (``shoppingList/basket/item``)
- tag filtering on ``item`` is necessary because ``itemCount`` and ``totalQuantity`` are also at depth=3 but not relevant

**Resulting dataset:**

+--------+----------+
| name   | quantity |
+--------+----------+
| potato | 5        |
+--------+----------+
| banana | 4        |
+--------+----------+
| tomato | 10       |
+--------+----------+
