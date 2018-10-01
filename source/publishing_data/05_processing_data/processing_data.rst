Processing data
===============

The content of a dataset can be seen as a flat database table. No matter their original data source format, datasets are composed of fields (columns) and records (rows). The values contained in both fields and records can be processed in the platform before being published.

In the OpenDataSoft platform, all processing operations are done in the Processing tab of the edition interface of each dataset.

.. localizedimage:: images/processing_parts.png
    :alt: Processing tab when publishing a new dataset

On the left side (1), next to the dataset preview, is displayed the "Add a processor" button. It leads to the processors interface. Processors are tools that can be used to modify, improve and enrich the data (see :doc:`Adding processors to a dataset<adding_processors_to_a_dataset>`).

On the right side (2) is the dataset preview. Directly in this preview is displayed a variety of buttons that can be used to define a schema for the dataset (see :doc:`Defining a dataset schema<defining_a_dataset_schema>`).


.. toctree::
   :maxdepth: 2

   adding_processors_to_a_dataset
   defining_a_dataset_schema
