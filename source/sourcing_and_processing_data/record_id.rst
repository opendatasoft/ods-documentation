Special fields
==============


Record_id
---------


We identify a record with an unique field named record_id.
During the processing, if two records have the same record_id, the first one is replaced by the second.

The record_id is compute at the end with the following rules:

#. Filter the fields. Keep all the fields which are mark as 'ID' or all the fields if no field is mark as id.
#. Sort the fields values.
#. Concat the sorted values.
#. Apply a hash function (sha1) to the string

.. ifconfig:: language == 'en'

    .. image:: record_id__schema--en.png
        :alt: Record id schema

.. ifconfig:: language == 'fr'

    .. image:: record_id__schema--fr.png
        :alt: Record id schema


Record_timestamp
----------------

A record_timestamp field is generated for all records, its is a timestamp giving information about the creation date of the record.
The value depends on the extractor type.
For example on a csv file, the record_timestamp is a last modified date. On a realtime dataset, the record_timestamp is the date when the record arrived on the platform.