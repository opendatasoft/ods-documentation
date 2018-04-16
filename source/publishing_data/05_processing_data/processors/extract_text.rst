Extract Text processor
======================

This processor allows to extract any part of a text, a number or a combination of both into a new column. It's similar to the Replace via Regexp processor, except that instead of replacing the content in the same original column, a new column is created with the extracted text. The idea is indeed to put the part to extract in parentheses. This part will then be extracted in a new column.

Setting the processor
---------------------

To set the parameters of the Extract Text processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Field
    * Field which contains the value(s) to extract
    * yes
  * * Regular expression
    * Regular expression to determine which part of the values will be extracted. See `<http://en.wikipedia.org/wiki/Regular_expression>`_ for more details on how to write a regular expressions. It is also possible to test regular expressions with an online debugger tool like `Regex101 <https://regex101.com/>`_.
    * yes

Example
-------

Using the same example as for the Replace via Regexp processor (from a French zip code like 44100, keep only the area code 44), the Extract Text processor can be used to create another column with the area code selected, instead of replacing the content like with the Replace via Regexp processor.

.. ifconfig:: language == 'en'

  .. figure:: screenshots/processing__extract-text-en.png
    :alt: Replace Regexp

    In this example, we use the pattern ``(?P<area>[0-9]{2})[0-9]{3}``. ``[0-9]`` means any digit, and ``{2}`` or ``{3}`` means the number of digits we are looking for. In this case we want to extract the first two digits, so we put them in parenthesis, then after the parenthesis we put the rest of the sequence that we don't want to extract, here the remaining 3 digits. The special expression ``?P<area>`` is just for specifying the new column name

.. ifconfig:: language == 'fr'

  .. figure:: screenshots/processing__extract-text-fr.png
    :alt: Replace Regexp

    In this example, we use the pattern ``(?P<area>[0-9]{2})[0-9]{3}``. ``[0-9]`` means any digit, and ``{2}`` or ``{3}`` means the number of digits we are looking for. In this case we want to extract the first two digits, so we put them in parenthesis, then after the parenthesis we put the rest of the sequence that we don't want to extract, here the remaining 3 digits. The special expression ``?P<area>`` is just for specifying the new column name

From a more technical point of view, this processor can be used to extract an arbitrary pattern expressed as a regular expression out of a string using sub matching.

The syntax of the sub-matching expression to specify is the following: ``(?P<NAME>REGEXP)``. Where:

* ``NAME`` is the name of a new field which will receive the result of the extraction. This field name can only contain letters, numbers and underscores (special characters like accentuated letters or commas are not allowed).
* ``REXGEXP`` is the submatch expression

For example, let's assume that you want to extract a street name out of an address. That is, for the address

.. code-block:: text

    600 Pennsylvania Ave NW, Washington, DC 20500, États-Unis

you might want to extract the value ``Pennsylvania Ave NW`` in a field  ``street_name``.

You would have to write the following expression:

.. code-block:: text

    [0-9]+ (?P<street_name>.*), .*, .*, .*

And if you want to extract the street number in a field ``street_number``, simply extend the previous expression:

.. code-block:: text

    (?P<street_number>[0-9]+) (?P<street_name>.*), .*, .*, .*
