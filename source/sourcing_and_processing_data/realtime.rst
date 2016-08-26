Realtime
========

Two possibility exist to create realtime dataset:

1. A remote source (http or ftp) and a minute scheduling
2. A realtime extractor/source and data push through the Push API



Remote source and scheduled datasets
------------------------------------

INCLUDE SCREENSHOOTS:

SOURCE
SCHEDULING

A remote source, created from an url (http or ftp), enables the scheduling tab. It allows a dataset to be scheduled at given interval. A minute scheduling will process the dataset every minutes.
The remote source will be fetched and the new data will be processed and append to the existing records.

This solution is easy to implement, it does not need any development, only a scheduled export on an http/ftp server.


Realtime datasets
-----------------

OpenDataSoft provides a Push API to build datasets out of real time data. The expected latency (time for a record to be processed and made available to the search API enpoints) shall be less than 2 second.

This API is especially useful for building crowd-sourced datasets.

Real time push entry points can be made available by dataset owners. Once the real time resource is ready, you can start sending data to it.

The records go through our transformation stack as any other record, so a pushed record can be enriched with more information (geocoding, join ...).


Configure the dataset
~~~~~~~~~~~~~~~~~~~~~

Create a realtime source by selecting 'Add a realtime source' in the 'Add a source' selector.

.. ifconfig:: language == 'en'

    .. image:: realtime__add--en.png
        :alt: Realtime add

.. ifconfig:: language == 'fr'

    .. image:: realtime__add--fr.png
        :alt: Realtime add

Until records are pushed to the dataset, the dataset is empty, to bootstrap the dataset schema (fields), you can paste json data inside the 'Bootstrap data' textbox.
The dataset **realtime_dataset** contains the following fields:

.. list-table::
   :header-rows: 1

   * * Field Name
     * Field Type
   * * identifier
     * text
   * * timestamp
     * date and time
   * * parameter
     * ext
   * * value
     * double

And you have an API pushkey which allows you to push records to this dataset: **6b35cbf5d3e4ded33177d3bb3c12feb40d2b558df4d164aae1844360**.

.. ifconfig:: language == 'en'

    .. image:: realtime__bootstrap--en.png
        :alt: Realtime add

.. ifconfig:: language == 'fr'

    .. image:: realtime__bootstrap--fr.png
        :alt: Realtime add

The recovery option enables possibility to reindex your data after a breaking change in the dataset configuration. Without recovery, if a realtime dataset is unpublish, all data are lost.
The alerting option sends alerts by email if no data is received during X minutes.

Image field
^^^^^^^^^^^

Image data has to be base64 encoded and wrapped inside the following json::

    {
        "content": "BASE64 data",
        "content_type": "image/jpg"
    }


Push data
~~~~~~~~~

To add a new record, post to this URL:
``http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?pushkey=6b35cbf5d3e4ded33177d3bb3c12feb40d2b558df4d164aae1844360``
the folowing content:

.. code-block:: json

    {
    	"identifier": "ab1",
    	"timestamp": "2014/01/27T04:15:00",
    	"parameter": "speed",
    	"value": 150
    }

With curl, this would give:

.. code-block:: bash

    curl -v -d '{"identifier": "230361", "timestamp": "2014/01/27T04:15:00", "parameter": "speed", "value": 150}' http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?pushkey=6b35cbf5d3e4ded33177d3bb3c12feb40d2b558df4d164aae1844360

If everything is ok, the server shall respond:

.. code-block:: json

    {"status": "ok"}

In case of error, it shall return an error message.

Delete data
~~~~~~~~~~~

To delete a record, the exact record json can be POST to this URL:
``http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/delete/?pushkey=6b35cbf5d3e4ded33177d3bb3c12feb40d2b558df4d164aae1844360``

or the following url can be GET, where **RECORD_ID** is the record id to delete (see record id doc)

``http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/RECORD_ID/delete/?pushkey=6b35cbf5d3e4ded33177d3bb3c12feb40d2b558df4d164aae1844360``

Disabling a resource
~~~~~~~~~~~~~~~~~~~~

A PUSH entry point can be enable/disable. A disabled entry point returns an error if data is received.