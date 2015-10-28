# APIs Monitoring

OpenDataSoft users API calls are natively monitored by OpenDataSoft, giving to administrators a deep understanding of how their datasets are used.

While the Google Analytics integration gives an overview of how the domain web site is used (viewed pages), API monitoring registers any API call, may it come from a web page or from a mobile application.

A basic dashboard is then made available from the *Domain > Monitoring > API* link.

![An API Monitoring Dashboard](api-monitoring-en.jpg)

And monitoring data can be explored with the standard OpenDataSoft dataset exploration view by hitting the upper right link **See more**.

You'll find below the list of fields available in the API monitoring dataset.

<table>
<tr><th>Field Name</th><th>Field Description</th><th>Facet</th></tr>
<tr><td>timestamp</td><td>Timestamp of the event</td><td>no</td></tr>
<tr><td>user_ip_addr</td><td>Remote IP address</td><td>no</td></tr>
<tr><td>hostname</td><td>HTTP request host name</td><td>yes</td></tr>
<tr><td>user_id</td><td> User identifier</td><td>yes</td></tr>
<tr><td>dataset_id</td><td>Dataset identifier</td><td>yes</td></tr>
<tr><td>domain_id</td><td>Domain identifier</td><td>yes</td></tr>
<tr><td>api</td><td>API name (see below)</td><td>yes</td></tr>
<tr><td>query_string</td><td>HTTP request query string</td><td>no</td></tr>
<tr><td>custom_attributes</td><td>HTTP request custom headers (see below)</td><td>yes</td></tr>
<tr><td>format</td><td>HTTP response format</td><td>yes</td></tr>
<tr><td>size_res</td><td>Response content size</td><td>no</td></tr>
<tr><td>nhits</td><td>Number of results</td><td>no</td></tr>
<tr><td>exec_time</td><td>Full processing time</td><td>no</td></tr>
<tr><td>request_aborted</td><td>If the request was aborted</td><td>yes</td></tr>
<tr><td>facet</td><td> List of facets used</td><td>yes</td></tr>
<tr><td>in_error</td><td>If the request processing generated an error</td><td>yes</td></tr>
<tr><td>error</td><td>Error message</td><td>no</td></tr>
<tr><td>attachment_id</td><td>Attachment identifier</td><td>no</td></tr>
<tr><td>image_id</td><td>Image identifier</td><td>no</td></tr>
<tr><td>user_agent</td><td>HTTP request user agent</td><td>no</td></tr>
<tr><td>referer</td><td>HTTP request referer</td><td>no</td></tr>
<tr><td>embed_type</td><td>Embed type (see below)</td><td>no</td></tr>
<tr><td>embed_referer</td><td>Embed referer</td><td>no</td></tr>
<tr><td>geo_coordinates</td><td>Geo coordinates (geoip on field user_ip_addr)</td><td>no</td></tr>
<tr><td>query_field</td><td>List of fields used in a full text query</td><td>no</td></tr>
<tr><td>query_text</td><td>Free text in a full text query</td><td>no</td></tr>
<tr><td>bot</td><td>If the query was used by a bot</td><td>yes</td></tr>
</table>

The **api** field contains one of the following values.

<table>
<tr><th>API name</th><th>Description</th><th>URL template</th></tr>
<tr><td>search_dataset_records</td><td></td><td></td></tr>
<tr><td>get_bbox_clusters</td><td></td><td></td></tr>
<tr><td>search_datasets</td><td></td><td></td></tr>
<tr><td>download_dataset_records</td><td></td><td></td></tr>
<tr><td>lookup_dataset</td><td></td><td></td></tr>
<tr><td>get_geo_clusters</td><td></td><td></td></tr>
<tr><td>analyze_records</td><td></td><td></td></tr>
<tr><td>dataset_list_snapshots</td><td></td><td></td></tr>
<tr><td>dowload_dataset</td><td></td><td></td></tr>
<tr><td>get_geo_clusters_polygon</td><td></td><td></td></tr>
<tr><td>odata_entity</td><td></td><td></td></tr>
<tr><td>download_dataset_attachment</td><td></td><td></td></tr>
<tr><td>odata_property_value</td><td></td><td></td></tr>
<tr><td>odata_entity_key_predicate</td><td></td><td></td></tr>
<tr><td>odata_service_root_doc</td><td></td><td></td></tr>
<tr><td>record_with_id</td><td></td><td></td></tr>
<tr><td>odata_metadata_doc</td><td></td><td></td></tr>
<tr><td>odata_record_count</td><td></td><td></td></tr>
<tr><td>download_image</td><td></td><td></td></tr>
<tr><td>lookup_record</td><td></td><td></td></tr>
</table>

A custom header **ODS-API-Analytics-App** can be sent along with the HTTP request. The header value is processed by our monitoring layer and made available in the field **custom_attributes**.

The **embed type** field describes the type of embed which generated the query, when relevant.

<table>
<tr><th>Embed type</th><th>Description</th></tr>
<tr><td>cartograph</td><td>Cartograph embed</td></tr>
<tr><td>chartbuilder</td><td>Advanced chart embed</td></tr>
<tr><td>explore-analyze</td><td>Analyze tab embed</td></tr>
<tr><td>explore-map</td><td>Map tab embed</td></tr>
<tr><td>explore-table</td><td>Explore tab embed</td></tr>
<tr><td>explore-images</td><td>Images tab embed</td></tr>
</table>
