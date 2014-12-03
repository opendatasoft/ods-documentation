### API Usage Monitoring

OpenDataSoft users API calls are natively monitored by OpenDataSoft, giving to administrators a deep understanding of how their datasets are used.

While the Google Analytics integration gives an overview of how the domain web site is used (viewed pages), API monitoring registers any API call, may it come from a web page or from a mobile application. 

A basic dasbhboard is then made available from the Domain > Monitoring > APIs Monitoring link.

![An API Monitoring Dashboard](twittercard.png)

And monitoring data can be explored with the standard OpenDataSoft dataset exploration view.

The following fields are available:

Field Name | Field Description | Facet (if the field is made available as a facet)
---------- | ----------------- | -------------------------------------------------
timestamp |  | no
user_ip_addr |  | no
hostname |  | yes
user_id |   | yes
dataset_id |  | yes
domain_id |  | yes
api |  | yes
query_string |  | no
custom_attributes |  | yes
format |  | yes
size_res |  | no
nhits |  | no
exec_time |  | no
request_aborted |  | yes
facet |   | yes
in_error |  | yes
error |  | no
attachment_id |  | no
image_id |  | no
user_agent |  | no
referer |  | no
embed_type |  | no
embed_referer |  | no
geo_coordinates |  | no
query_field |  | no
query_text |  | no
bot |  | yes
