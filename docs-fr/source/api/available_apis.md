# Available APIs

OpenDataSoft datasets can be accessed by developers through HTTP REST APIs.

The domain <http://public.opendatasoft.com> will be use to illustrate examples given in this forum.

### Available APIs

The available APIs are listed below.

<table>
<tr><th>API Name</th><th>API Short Description</th></tr>
<tr><td>Dataset search API</td><td>Search datasets</td></tr>
<tr><td>Dataset lookup API</td><td>Find a dataset based on its identifier</td></tr>
<tr><td>Records search API</td><td>Search records within a specific dataset</td></tr>
<tr><td>Analysis API</td><td>Build advanced aggregations using records of a specific dataset</td></tr>
<tr><td>Download API</td><td>Efficiently download a large number of records from a specific dataset</td></tr>
<tr><td>Geo clustering API</td><td>Build geo clusters using records of a specific dataset</td></tr>
<tr><td>Real Time Push API</td><td>Real time data integration</td></tr>
<tr><td>Multimedia Download API</td><td>Download multimedia content attached with datasets or records</td></tr>
</table>

All these APIs (except the Multimedia download API) return JSON by default. Some of them can return alternate content.

All these APIs (except the Real Time Push API) support cross-domain access from
a browser, using CORS (<http://en.wikipedia.org/wiki/Cross-origin_resource_sharing>).
For older browsers or other specific purposes, JSONP (<http://en.wikipedia.org/wiki/JSONP>) is supported when returning JSON content by adding a `callback` parameter.

### Finding the dataset identifier

You are looking for specific data to build your application but you don't know yet in which dataset you can find these data?

You can simply use the exploration console by clicking on the "Explore" link in the top page menu. Once you have identified the dataset you need, just go to this dataset's "Information" tab where you'll find the dataset id.

### HTTP Methods

Except for the Real Time Push API which respects more strictly RESTful concepts, all the APIs endpoints accept GET and POST HTTP methods. GET methods shall be prefered of course. The POST can be used to workaround browsers / libraries / proxies limitations regarding the size of the HTTP URL.

### Security

All the APIs are secured using the same authentication and authorization model.

Users can only see what they are allowed to see:

 * Datasets in a domain
 * Records in a dataset

APIs are available both in HTTP and HTTPS. We advise API users to always use the HTTPS endpoint.

The following authentication modes are available:

- **Basic HTTP authentication:** Provide your account's login and password (<http://en.wikipedia.org/wiki/Basic_access_authentication>)
- **Simple key authentication:** Provide an API key you generated for your account (API keys work on any domain an OpenDataSoft user has access to)

Note that when you are connected with a Browser session, API calls triggered from that browser will reuse your current credentials.

### Quotas

APIs endpoints are subject to quota-based limitations. Contact the domain administrator or the dataset owner when you reach a limit.

The API response contains three headers to indicate the current state of your quota:

- **X-RateLimit-Limit** indicates the total number of API calls you can do in a single day (resets at midnight UTC)
- **X-RateLimit-Remaining** indicates the number of API calls currently remaining
- **X-RateLimit-Reset** indicates the [epoch](http://en.wikipedia.org/wiki/Unix_time) of the next reset time

### Errors handling

When an error occurs, a JSON object describing the error is returned by the API.

Example of an error occuring when you reach a quota limit:

    HTTP return code:
    	403
    HTTP response body:
	    {
	    	"errorcode": 10001,
			"error"": "License Violation Exception : You have exceeded your quotas."
		}