Join dataset processor
======================

This processor allows to join 2 datasets together. However, these 2 datasets must have a common field to be joined.

Example: a dataset A could be enriched with more data, which are in a dataset B. If datasets A and B have one field in common, it is possible to join these datasets together, in order to retrieve a field from dataset B et add it to dataset A.

.. admonition:: Important
   :class: important

   By default, the Join dataset processor can only be used with remote datasets that have fewer than 100,000 records. In addition to that, when applying a join dataset processor to a scheduled dataset, the join is only reapplied when the resource has changed. This means that given a scheduled dataset A, that has a join dataset processor that pulls values from dataset B, if there are new values in dataset B but the resources of dataset A haven't changed, the scheduled processing will not pull the new values from B.

Setting the processor
---------------------

To set the parameters of the Join dataset processor, follow the indications from the table below.

.. list-table::
  :header-rows: 1

  * * Label
    * Description
    * Mandatory
  * * Dataset
    * Dataset used for the join. It can be selected from the portal's datasets or from OpenDataSoft's network.
    * yes
  * * Local Key
    * Local field that will be used to identify the corresponding records in the remote dataset. More than one key can be specified.
    * yes
  * * Remote Key
    * Remote field corresponding to the local key. It can be a list.
    * yes
  * * Output Fields
    * List of fields to retrieve from the remote dataset
    * yes
  * * Retrieve All Fields
    * Set to retrieve all the fields from the remote dataset
    * no
  * * Case Sensitive
    * Set to retrieve the field name without accents and in lower case format
    * no
  * * One line
    * In some specific cases, the remote dataset may contain more than one row matching the local key. In which case, you may want to either collapse duplicates (that is, generate a single row which will contain multi-valued fields) or not.
    * no
  * * Separator
    * To fill if One line is set. Specifies the character to use to separate values in the generated field.
    * no


Examples
--------

Simple join
^^^^^^^^^^^

Dataset A: list of taxi stations in Paris (dataset name: paris_taxis_stations).

.. list-table::
   :header-rows: 1

   * * station_id
     * station_name
     * station_address
   * * 1
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 2
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

Dataset B: number of taxis waiting per station in Paris.

.. list-table::
   :header-rows: 1

   * * station_id
     * number
   * * 1
     * 10
   * * 2
     * 15

Dataset A after being enriched with a field from dataset B, using the Join dataset processor:

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

Join with "One line" parameter set
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. admonition:: Note
   :class: note

   The example datasets used in the following example are the same as in the previous one.

Dataset A contains two rows for the first station:

.. list-table::
   :header-rows: 1

   * * station_id
     * station_name
     * station_address
   * * 1
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 1
     * Quai Branly
     * 69 quai Branly, 75007 Paris
   * * 2
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

If One line is set (with ``|`` set as separator), the Join will result in:

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel|Quai Branly
     * 69 quai Branly, 75007 Paris|69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

However, if One line is not set, the Join will result in:

.. list-table::
   :header-rows: 1

   * * station_id
     * number
     * station_name
     * station_address
   * * 1
     * 10
     * Tour Eiffel
     * 69 quai Branly, 75007 Paris
   * * 1
     * 10
     * Quai Branly
     * 69 quai Branly, 75007 Paris
   * * 2
     * 15
     * Rennes - Montparnasse
     * 1 place du dix huit Juin 1940, 75006 Paris

Join with different field types
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Integers, decimals and text field containing numerical values can be joined together.

Dataset A: with decimal fields and text fields containing numerical values.

.. list-table::
   :header-rows: 1

   * * insee_code (text)
     * bloom_competition_result (decimal)
   * * 01262
     * 2.0
   * * 90010
     * 4.0
   * * 57355
     * 2.0

Dataset B: with integer fields.

.. list-table::
   :header-rows: 1

   * * bloom_ranks (integer)
   * * 2

Dataset A after using Join dataset: the matching between values ``2`` and ``2.0`` is successful despite the type difference.

.. list-table::
   :header-rows: 1

   * * insee_code (text)
     * bloom_competition_result (decimal)
   * * 01262
     * 2
   * * 57355
     * 2

It is possible to a second Join dataset processor, such as this dataset C:

.. list-table::
   :header-rows: 1

   * * city (text)
     * insee_code (integer)
     * postal_code (text)
   * * Montluel
     * 1262
     * 01120
   * * Belfort
     * 90010
     * 90000
   * * Kalhausen
     * 57355
     * 57412

Dataset A after being joined with datasets B and C:

.. list-table::
   :header-rows: 1

   * * insee_code (text)
     * bloom_competition_result (decimal)
     * city (text)
     * postal_code (text)
   * * 01262
     * 2
     * Montluel
     * 01120
   * * 57355
     * 2
     * Kalhausen
     * 57412

Even though the insee_code was not in the same type, the matching happened. The matching worked even for the value ``1262`` in the first dataset (note the absence of leading 0, due to it being an integer value), that matched against the value ``01262`` in the second dataset. While most column types can be retrieved by using the Join dataset processor, file type columns do not yield the actual resource through the processor but instead yield the name of the underlying resource.
