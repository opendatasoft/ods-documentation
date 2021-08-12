.. _refining-data:

Refining data
=============

Conditions refine the data shown on a chart or a KPI.
They are the equivalent of refinements in widgets, but you can preview instantly the refined data in the preview pane of the Studio.

When editing a page, you can apply a condition to a chart or a KPI using the Studio.

Combining conditions
--------------------

You can use one or more conditions.
By default, conditions are combined using an "AND" operator: it is then true if all conditions are met.

You can also combine conditions using the "OR" operator: it is then true if any conditions are met.

You can also combine conditions using both operators.
The "AND" operator has then precedence over the "OR" operator.

Configuring conditions
----------------------

A condition includes the following elements:

- One field from the input dataset.
- An operator that varies according to the field type

.. list-table::
   :header-rows: 1
   :widths: 30 70

   * * Field types
     * Available operators
   * * Text
     * - contains
       - does not contain
       - is empty
       - is not empty
   * * Numeric
     * - strictly superior to
       - strictly inferior to
       - equal to
       - superior or equal to
       - inferior or equal to
       - is empty
       - is not empty
   * * Date
     * - strictly prior to
       - strictly post
       - equal to
       - prior or equal to
       - post or equal to
       - is empty
       - is not empty

- One or more values.

Managing conditions
-------------------

Adding a condition
~~~~~~~~~~~~~~~~~~

When editing a chart or a KPI, you configure the visualization styles.
At this step, you can add a condition to refine the data shown to the audience:

1. Click **Add a condition**.
2. Select the field from the input dataset.
3. Select an operator.
4. Add a value.
5. (optional) Click **+** to add another value. Values are combined using the "OR" operator.
6. Click **Next** to continue with the configuration.

Deleting a condition
~~~~~~~~~~~~~~~~~~~~

Once validated, a condition can be deleted or duplicated to another subset, or combined with other conditions.

When deleting a condition, it only applies to the selected condition.
If you duplicated this condition beforehand, the duplicated conditions are not deleted.

When editing a chart or a KPI, you configure the visualization styles.
At this step, you can delete a condition that you previously added:

1. Hover over the condition to be deleted.
2. Click the bin icon.
3. Click **Next** to continue with the configuration.

Duplicating a condition
~~~~~~~~~~~~~~~~~~~~~~~

Once you have added a condition to a subset, you can reuse it on another subset.
When duplicating a condition, the condition is applied to all the subsets in the block and added at the last position available in the subset.

Reusing a condition creates a copy of the condition.
If you later edit the condition, it will not impact the duplicated conditions.
