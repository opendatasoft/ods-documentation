��    1      �              ,  �   -  �   �  q   H  O   �  l   
     w     �  `   �  �   �  O   |  v   �  T  C     �     �  ?   �  6   �     +	     >	     Q	     f	  =   s	  F   �	     �	  :   
  $  C
  &   h     �     �     �     �  �   �  K   j     �     �     �     �             (   #     L  T   U  $   �  f   �  1   6  0   h  P   �  |   �  �   g  �  G  �     �   �  q   ,  O   �  l   �     [     d  `   z  �   �  O   `  v   �  T  '     |     �  ?   �  6   �          "     5     J  =   W  F   �     �  :   �  $  '  &   L     s     �     �     �  �   �  K   N     �     �     �     �     �     �  (        0  T   9  $   �  f   �  1     0   L  P   }  |   �  �   K   **Basic HTTP authentication:** Provide your account's login and password (`<http://en.wikipedia.org/wiki/Basic_access_authentication>`_) **Simple key authentication:** Provide an API key you generated for your account (API keys work on any domain an OpenDataSoft user has access to) **X-RateLimit-Limit** indicates the total number of API calls you can do in a single day (resets at midnight UTC) **X-RateLimit-Remaining** indicates the number of API calls currently remaining **X-RateLimit-Reset** indicates the `epoch <http://en.wikipedia.org/wiki/Unix_time>`_ of the next reset time API Name API Short Description APIs are available both in HTTP and HTTPS. We advise API users to always use the HTTPS endpoint. APIs endpoints are subject to quota-based limitations. Contact the domain administrator or the dataset owner when you reach a limit. All the APIs are secured using the same authentication and authorization model. All these APIs (except the Multimedia download API) return JSON by default. Some of them can return alternate content. All these APIs (except the Real Time Push API) support cross-domain access from a browser, using CORS (`<http://en.wikipedia.org/wiki/Cross-origin_resource_sharing>`_). For older browsers or other specific purposes, JSONP (`<http://en.wikipedia.org/wiki/JSONP>`_) is supported when returning JSON content by adding a ``callback`` parameter. Analysis API Available APIs Build advanced aggregations using records of a specific dataset Build geo clusters using records of a specific dataset Dataset lookup API Dataset search API Datasets in a domain Download API Download multimedia content attached with datasets or records Efficiently download a large number of records from a specific dataset Errors handling Example of an error occuring when you reach a quota limit: Except for the Real Time Push API which respects more strictly RESTful concepts, all the APIs endpoints accept GET and POST HTTP methods. GET methods shall be prefered of course. The POST can be used to workaround browsers / libraries / proxies limitations regarding the size of the HTTP URL. Find a dataset based on its identifier Finding the dataset identifier Geo clustering API HTTP Methods Multimedia Download API Note that when you are connected with a Browser session, API calls triggered from that browser will reuse your current credentials. OpenDataSoft datasets can be accessed by developers through HTTP REST APIs. Quotas Real Time Push API Real time data integration Records in a dataset Records search API Search datasets Search records within a specific dataset Security The API response contains three headers to indicate the current state of your quota: The available APIs are listed below. The domain `<http://public.opendatasoft.com>`_ will be use to illustrate examples given in this forum. The following authentication modes are available: Users can only see what they are allowed to see: When an error occurs, a JSON object describing the error is returned by the API. You are looking for specific data to build your application but you don't know yet in which dataset you can find these data? You can simply use the exploration console by clicking on the "Explore" link in the top page menu. Once you have identified the dataset you need, just go to this dataset's "Information" tab where you'll find the dataset id. Project-Id-Version:  Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-12-15 15:12+0100
PO-Revision-Date: 2015-12-11 10:02+0000
Last-Translator: Jérémy Morel <morel.jeremy@gmail.com>
Language: fr
Language-Team: French (http://www.transifex.com/opendatasoft/documentation-5/language/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 **Basic HTTP authentication:** Provide your account's login and password (`<http://en.wikipedia.org/wiki/Basic_access_authentication>`_) **Simple key authentication:** Provide an API key you generated for your account (API keys work on any domain an OpenDataSoft user has access to) **X-RateLimit-Limit** indicates the total number of API calls you can do in a single day (resets at midnight UTC) **X-RateLimit-Remaining** indicates the number of API calls currently remaining **X-RateLimit-Reset** indicates the `epoch <http://en.wikipedia.org/wiki/Unix_time>`_ of the next reset time API Name API Short Description APIs are available both in HTTP and HTTPS. We advise API users to always use the HTTPS endpoint. APIs endpoints are subject to quota-based limitations. Contact the domain administrator or the dataset owner when you reach a limit. All the APIs are secured using the same authentication and authorization model. All these APIs (except the Multimedia download API) return JSON by default. Some of them can return alternate content. All these APIs (except the Real Time Push API) support cross-domain access from a browser, using CORS (`<http://en.wikipedia.org/wiki/Cross-origin_resource_sharing>`_). For older browsers or other specific purposes, JSONP (`<http://en.wikipedia.org/wiki/JSONP>`_) is supported when returning JSON content by adding a ``callback`` parameter. Analysis API Available APIs Build advanced aggregations using records of a specific dataset Build geo clusters using records of a specific dataset Dataset lookup API Dataset search API Datasets in a domain Download API Download multimedia content attached with datasets or records Efficiently download a large number of records from a specific dataset Errors handling Example of an error occuring when you reach a quota limit: Except for the Real Time Push API which respects more strictly RESTful concepts, all the APIs endpoints accept GET and POST HTTP methods. GET methods shall be prefered of course. The POST can be used to workaround browsers / libraries / proxies limitations regarding the size of the HTTP URL. Find a dataset based on its identifier Finding the dataset identifier Geo clustering API HTTP Methods Multimedia Download API Note that when you are connected with a Browser session, API calls triggered from that browser will reuse your current credentials. OpenDataSoft datasets can be accessed by developers through HTTP REST APIs. Quotas Real Time Push API Real time data integration Records in a dataset Records search API Search datasets Search records within a specific dataset Security The API response contains three headers to indicate the current state of your quota: The available APIs are listed below. The domain `<http://public.opendatasoft.com>`_ will be use to illustrate examples given in this forum. The following authentication modes are available: Users can only see what they are allowed to see: When an error occurs, a JSON object describing the error is returned by the API. You are looking for specific data to build your application but you don't know yet in which dataset you can find these data? You can simply use the exploration console by clicking on the "Explore" link in the top page menu. Once you have identified the dataset you need, just go to this dataset's "Information" tab where you'll find the dataset id. 