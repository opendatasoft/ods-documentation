This API is designed to make it possible to build datasets out of **real time data**. The expected latency (time for a record to be processed and made available to the search API enpoints) shall be **less than 2 second**.

This API is especially useful for building crowd-sourced datasets.

Real time push entry points can be made available by dataset owners. Once the real time resource is ready, you can start sending data to it.

### Adding a record

**API endpoint**: /api/push/1.0/&lt;DATASET&gt;/&lt;RESOURCE&gt;/push/

To add a record, simply send a POST request on the API endpoint with the request URL containing your API key and the request body containing a JSON document with all the fields you want to set.

Example:

Let's assume that a domain **realtime** contains a dataset named **realtime_dataset** and that this dataset contains a realtime resource named **realtime_resource**. 

The dataset **realtime_dataset** contains the following fields:

Field Name | Field Type
---------- | ----------
identifier | text
timestamp | date and time
parameter | text
value | double

And you have an API key which allows you to push records to this dataset: **dezn198329kkjnKJN290909**.

To add a new record, post to this URL: `http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?apikey=dezn198329kkjnKJN290909` the folowing content:

    {
    	"identifier": "ab1",
    	"timestamp": "2014/01/27T04:15:00",
    	"parameter": "speed",
    	"value": 150
    }

With curl, this would give:

    curl -v -d '{"identifier": "230361", "timestamp": "2014/01/27T04:15:00", "parameter": "speed", "value": 150}' http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?apikey=dezn198329kkjnKJN290909
    
If everything is ok, the server shall respond:

    {"status": "ok"}
    
In case of error, it shall return an error message.

