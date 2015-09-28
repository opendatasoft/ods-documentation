# APIs Monitoring

OpenDataSoft users API calls are natively monitored by OpenDataSoft, giving to administrators a deep understanding of how their datasets are used.

While the Google Analytics integration gives an overview of how the domain web site is used (viewed pages), API monitoring registers any API call, may it come from a web page or from a mobile application.

A basic dashboard is then made available from the *Domain > Monitoring > API* link.

![An API Monitoring Dashboard](api-monitoring-en.jpg)

And monitoring data can be explored with the standard OpenDataSoft dataset exploration view by hitting the upper right link **See more**.

You'll find below the list of fields available in the API monitoring dataset.

Field Name | Field Description | Facet
---------- | ----------------- | -----
timestamp | Timestamp of the event | no
user_ip_addr | Remote IP address | no
hostname | HTTP request host name | yes
user_id |  User identifier | yes
dataset_id | Dataset identifier | yes
domain_id | Domain identifier | yes
api | API name (see below) | yes
query_string | HTTP request query string | no
custom_attributes | HTTP request custom headers (see below)| yes
format | HTTP response format | yes
size_res | Response content size | no
nhits | Number of results | no
exec_time | Full processing time | no
request_aborted | If the request was aborted | yes
facet |  List of facets used | yes
in_error | If the request processing generated an error | yes
error | Error message | no
attachment_id | Attachment identifier | no
image_id | Image identifier | no
user_agent | HTTP request user agent | no
referer | HTTP request referer | no
embed_type | Embed type (see below) | no
embed_referer | Embed referer | no
geo_coordinates | Geo coordinates (geoip on field user_ip_addr) | no
query_field | List of fields used in a full text query | no
query_text | Free text in a full text query | no
bot | If the query was used by a bot | yes

The **api** field contains one of the following values.

API name | Description | URL template
-------- | ----------- | ------------
search_dataset_records |
get_bbox_clusters |
search_datasets |
download_dataset_records |
lookup_dataset |
get_geo_clusters |
analyze_records |
dataset_list_snapshots |
dowload_dataset |
get_geo_clusters_polygon |
odata_entity |
download_dataset_attachment |
odata_property_value |
odata_entity_key_predicate |
odata_service_root_doc |
record_with_id |
odata_metadata_doc |
odata_record_count |
download_image |
lookup_record |

A custom header **ODS-API-Analytics-App** can be sent along with the HTTP request. The header value is processed by our monitoring layer and made available in the field **custom_attributes**.

The **embed type** field describes the type of embed which generated the query, when relevant.

Embed type | Description
---------- | -----------
cartograph | Cartograph embed
chartbuilder | Advanced chart embed
explore-analyze | Analyze tab embed
explore-map | Map tab embed
explore-table | Explore tab embed
explore-images | Images tab embed
