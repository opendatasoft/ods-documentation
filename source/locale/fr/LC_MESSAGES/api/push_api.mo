��          �               �  >   �     �  f        s  
   |  
   �  .   �  3   �  �   �     �  �   �  ?   ;  �   {  B   Y  �   �  �   S          1     ?     F  
   J  	   U     _  	   d     n  �  t  >   0	     o	  f   	     �	  
   �	  
   �	  .   
  3   4
  �   h
       �   !  ?   �  �   �  B   �  �     �   �     �     �     �     �  
   �  	   �     �  	   �     �   **API endpoint**: ``/api/push/1.0/<DATASET>/<RESOURCE>/push/`` Adding a record And you have an API key which allows you to push records to this dataset: **dezn198329kkjnKJN290909**. Example: Field Name Field Type If everything is ok, the server shall respond: In case of error, it shall return an error message. Let's assume that a domain **realtime** contains a dataset named **realtime_dataset** and that this dataset contains a realtime resource named **realtime_resource**. Real Time Push API Real time push entry points can be made available by dataset owners. Once the real time resource is ready, you can start sending data to it. The dataset **realtime_dataset** contains the following fields: This API is designed to make it possible to build datasets out of **real time data**. The expected latency (time for a record to be processed and made available to the search API enpoints) shall be **less than 2 second**. This API is especially useful for building crowd-sourced datasets. To add a new record, post to this URL: ``http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?apikey=dezn198329kkjnKJN290909`` the folowing content: To add a record, simply send a POST request on the API endpoint with the request URL containing your API key and the request body containing a JSON document with all the fields you want to set. With curl, this would give: date and time double ext identifier parameter text timestamp value Project-Id-Version:  Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-15 15:12+0100
PO-Revision-Date: 2015-12-15 09:44+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: French (http://www.transifex.com/opendatasoft/documentation-5/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 **API endpoint**: ``/api/push/1.0/<DATASET>/<RESOURCE>/push/`` Adding a record And you have an API key which allows you to push records to this dataset: **dezn198329kkjnKJN290909**. Example: Field Name Field Type If everything is ok, the server shall respond: In case of error, it shall return an error message. Let's assume that a domain **realtime** contains a dataset named **realtime_dataset** and that this dataset contains a realtime resource named **realtime_resource**. Real Time Push API Real time push entry points can be made available by dataset owners. Once the real time resource is ready, you can start sending data to it. The dataset **realtime_dataset** contains the following fields: This API is designed to make it possible to build datasets out of **real time data**. The expected latency (time for a record to be processed and made available to the search API enpoints) shall be **less than 2 second**. This API is especially useful for building crowd-sourced datasets. To add a new record, post to this URL: ``http://realtime.opendatasoft.com/api/push/1.0/realtime_dataset/realtime_resource/push/?apikey=dezn198329kkjnKJN290909`` the folowing content: To add a record, simply send a POST request on the API endpoint with the request URL containing your API key and the request body containing a JSON document with all the fields you want to set. With curl, this would give: date and time double ext identifier parameter text timestamp value 